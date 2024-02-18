//
//  MiniPlayer.swift
//  HW-23-AppleMusic
//
//  Created by Gabriel Zdravkovici on 27.01.2024.
//

import SwiftUI

struct MiniPlayer: View {
    
    var animation: Namespace.ID
    @Binding var expand: Bool
    var height = UIScreen.main.bounds.height / 3.5
    @State var volume: CGFloat = 0
    @State var currentTime: Double = 0
    @Environment(\.colorScheme) var colorScheme
    
    var safeArea: UIEdgeInsets? {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else {
            return nil
        }
        return windowScene.windows.first?.safeAreaInsets
    }
    
    var body: some View {
        
        VStack {
            
            
            Capsule()
                .fill(Color.gray)
                .frame(width: expand ?  60 : 0, height: expand ? 4 : 0)
                .opacity(expand ? 1 : 0)
                .padding(.top, expand ? safeArea?.top : 0)
                .padding(.vertical, expand ? 30 : 0)
            
            HStack(spacing: 15) {
                // centering image
                if expand { Spacer(minLength: 0)}
                
                Image("rihannaDiamonds")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: expand ? height : 55, height: expand ? height : 55)
                    .cornerRadius(15)
                
                if !expand {
                    Text("Rihanna - Diamonds")
                        .font(.title3)
                        .fontWeight(.bold)
                        .matchedGeometryEffect(id: "Label", in: animation)
                }
                
                Spacer(minLength: 0)
                
                if !expand {
                    Button (action: {} , label:  {
                        Image(systemName: "play.fill")
                            .font(.title2)
                            .foregroundStyle(colorScheme == .dark ? .white : .black)
                    })
                    Button (action: {}, label: {
                        Image(systemName: "forward.fill")
                            .font(.title2)
                            .foregroundStyle(colorScheme == .dark ? .white : .gray)
                    })
                }
                }
                
            .padding(.horizontal)
            
            VStack(spacing: 15) {
                
               Spacer(minLength: 0)
                
                HStack {
                    if expand {
                        VStack {
                            Text ("Diamonds")
                                .font(.title3)
                                .foregroundStyle(.primary)
                                .fontWeight(.bold)
                                .padding(.leading, 10)
                            
                            Text("Rihanna")
                                .font(.title2)
                                .foregroundStyle(.gray)
                                .fontWeight(.bold)
                                .matchedGeometryEffect(id: "Label", in: animation)
                        }
                    }
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        Image(systemName: "ellipsis.circle.fill")
                            .font(.title2)
                            .foregroundStyle(.gray)
                    }
                }
                .padding()
                .padding(.top, 20)
                
                VStack {
                    Slider(value: $volume)
                }.padding()
                
                
//                HStack {
//                    
//                    Capsule()
//                        .fill(
//                            LinearGradient(gradient: .init(colors: [Color.white.opacity(0.7), Color.white.opacity()]), startPoint: <#T##UnitPoint#>, endPoint: <#T##UnitPoint#>)
//                        )
//                    
//                }
                
                // Stop Button
                    GeometryReader { geometry in
                        ZStack(alignment: .leading) {
                            ZStack(alignment: .leading) {
                                RoundedRectangle(cornerRadius: 10)
                                    .frame(width: geometry.size.width, height: 2)
                                    .foregroundStyle(.gray).opacity(0.5)
                            }
                            ZStack {
                                Circle()
                                    .frame(width: 8, height: 8)
                                    .foregroundStyle(colorScheme == .dark ? .white : .black)
                                
                                Circle().frame(width: 30, height: 30)
                                    .foregroundStyle(.green).opacity(0.0001)
                                
                            }.offset(x: CGFloat(currentTime) * geometry.size.width - 10)
                                .gesture(
                                    DragGesture(minimumDistance: 0)
                                        .onChanged{ gesture in
                                            updateValue(with: gesture, in: geometry)
                                        })
                        }
                    }.padding(.horizontal, 30)
                    
                    HStack {
                        Text("0:00")
                            .font(.caption2)
                            .foregroundStyle(colorScheme == .dark ? .white : .black).opacity(0.3)
                        Spacer()
                        Text("-3:55")
                            .font(.caption2)
                            .foregroundStyle(colorScheme == .dark ? .white : .black).opacity(0.3)
                    }.padding(30)
                        .padding(.top, -10)
                }.padding(.top, -25)
                
                Button(action: {}) {
                    Image(systemName: "stop.fill")
                        .font(.largeTitle)
                        .foregroundStyle(.primary)
                }
                .padding()
                HStack(spacing: 50) {
                    
                    Button(action: {}) {
                        Image(systemName: "backward.fill")
                            .font(.system(size: 25))
                            .foregroundStyle(colorScheme == .dark ? .white : .black)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "play.fill")
                            .font(.system(size: 45))
                            .foregroundStyle(colorScheme == .dark ? .white : .black)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "forward.fill")
                            .font(.system(size: 25))
                            .foregroundStyle(colorScheme == .dark ? .white : .black)
                    }
                }.padding(.top, -30)
                    .padding()
                
                Spacer(minLength: 0)
                
                HStack(spacing: 15) {
                    
                    Image(systemName: "speaker.fill")
                    
                    Slider(value: $volume)
                    
                    Image(systemName: "speaker.wave.2.fill")
                }
                .padding()
                
                HStack(spacing: 90) {
                    
                    Button(action: {}) {
                        Image(systemName: "quote.bubble")
                            .font(.title2)
                            .foregroundStyle(.white)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .font(.title2)
                            .foregroundStyle(.white)
                    }
                    
                    
                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                            .font(.title2)
                            .foregroundStyle(.white)
                    }
                    
                }.padding(.bottom, safeArea?.bottom == 0 ? 15 : safeArea?.bottom)
            }
            .frame(width: expand ? nil : 0, height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
        }
        // expanding when clicked
        
        .frame(maxHeight: expand ? .infinity : 70)
        .background(
            VStack(spacing: 0) {
                BlurView()
                Divider()
            }.onTapGesture(perform: {
                withAnimation(.spring()) { expand.toggle() }
            })
        )
        .ignoresSafeArea()
        .offset(y: expand ? 0 : -45)
    }
}

//#Preview {
//    MiniPlayer()
//}
