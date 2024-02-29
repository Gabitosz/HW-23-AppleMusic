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
                .padding(.vertical, expand ? 30 : 0)
                .padding(.top, expand ? 120 : 0)
            
            
            HStack(spacing: 15) {
                
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
                            Text("Diamonds")
                                .font(.title3)
                                .foregroundStyle(.primary)
                                .fontWeight(.bold)
                                .padding(.leading, 10)
                            
                            Text("Rihanna")
                                .font(.title2)
                                .foregroundStyle(.gray)
                                .fontWeight(.bold)
                                .matchedGeometryEffect(id: "Label", in: animation)
                        }.padding(.top, 10)
                    }
                    Spacer(minLength: 0)
                    
                    Button(action: {}) {
                        Image(systemName: "ellipsis.circle.fill")
                            .font(.title2)
                            .foregroundStyle(.gray)
                    }.padding(.top, 10)
                }
                .padding()
                .padding(.top, 20)
                
                VStack {
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
                }.padding(.bottom, 10)
                    .padding()
                
                HStack(spacing: 90) {
                    
                    Button(action: {}) {
                        Image(systemName: "quote.bubble")
                            .font(.title2)
                            .foregroundStyle(colorScheme == .dark ? .white : .black)
                    }
                    
                    Button(action: {}) {
                        Image(systemName: "airplayaudio")
                            .font(.title2)
                            .foregroundStyle(colorScheme == .dark ? .white : .black)
                    }
                    
                    Button(action: {}) {
                        ZStack {
                            Image(systemName: "list.bullet")
                                .font(.title2)
                                .foregroundStyle(colorScheme == .dark ? .white : .black)
                            Image(systemName: "shuffle").padding(5)
                                .background(Color.gray.opacity(0.9)).clipShape(Circle())
                                .font(.system(size: 10))
                                .foregroundStyle(colorScheme == .dark ? .white : .white)
                                .padding(.bottom, 20)
                                .padding(.leading, 20)
                        }
                    }
                    
                }.padding(.bottom, safeArea?.bottom == 0 ? 15 : safeArea?.bottom)
                    .padding(.bottom, 250)
            }
            .frame(width: expand ? nil : 0, height: expand ? nil : 0)
            .opacity(expand ? 1 : 0)
        }.padding(.bottom, expand ? -110 : 0)
        
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
    
    // Music Slider
    private func updateValue(with gesture: DragGesture.Value, in geometry: GeometryProxy) {
        let newValue = gesture.location.x / geometry.size.width
        currentTime = min(max(Double(newValue), 0), 1)
    }
}

//#Preview {
//    MiniPlayer()
//}
