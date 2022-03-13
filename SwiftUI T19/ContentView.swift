//
//  ContentView.swift
//  SwiftUI T19
//
//  Created by M Fadli Zein on 13/03/22.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
                .opacity(show ? 0.5 : 0.2)
                .animation(.linear(duration: 0.8))
            RoundedRectangle(cornerRadius: 40)
                .foregroundColor(.white)
                .frame(height: 300)
                .opacity(0.5)
                .padding(32)
                .offset(y: 30)
            RoundedRectangle(cornerRadius: 40)
                .frame(height: 300)
                .offset(y: show ? 600: 0)
                .foregroundColor(.white)
                .shadow(radius: 40)
                .padding()
                .animation(.timingCurve(<#T##c0x: Double##Double#>, <#T##c0y: Double##Double#>, <#T##c1x: Double##Double#>, <#T##c1y: Double##Double#>))
        }
        .onTapGesture {
            show.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
