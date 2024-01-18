//
//  ContentView.swift
//  TranslationsDemoApp
//
//  Created by Filip Bulander on 14.01.2024.
//

import SwiftUI

struct ContentView: View {
    
    @State var bananasCount = 0
    @State var applesCount = 0
    @State var showingAlert = false
    
    var body: some View {
        VStack {
            Text("Hello world")
            Text("Welcome here")
                .font(.caption)
            Spacer()
            HStack {
                addButton
                removeButton
            }
            Text("\(bananasCount) banana")
            HStack {
                addAppleButton
                removeAppleButton
            }
            Text("\(applesCount) apple")
            Spacer()
            Text("🍌🍌🍌🍌🍌🍌🍌")
                .font(.title)
            Text("🍎🍎🍎🍎🍎🍎🍎")
                .font(.title)
        }
        .alert("Removing bananas is not possible anymore", isPresented: $showingAlert) {
                    Button("OK", role: .cancel) { }
                }
        .navigationBarTitle("Title", displayMode: .inline)
        .padding()
    }
    
    private var addButton: some View {
        Button(
            action: addAction,
            label: {
                Text("Add bananas")
            }
        )
        .padding()
    }
    
    private var removeButton: some View {
        Button(
            action: removeAction,
            label: {
                Text("Remove bananas")
            }
        )
        .padding()
    }
    
    private var addAppleButton: some View {
        Button(
            action: addAppleAction,
            label: {
                Text("Add apples")
            }
        )
        .padding()
    }
    
    private var removeAppleButton: some View {
        Button(
            action: removeAppleAction,
            label: {
                Text("Remove apple")
            }
        )
        .padding()
    }
    
    private func addAction() {
        bananasCount += 1
    }
    
    private func removeAction() {
        if bananasCount == 0 {
            showingAlert = true
        } else {
            bananasCount -= 1
        }
    }
    
    private func addAppleAction() {
        applesCount += 1
    }
    
    private func removeAppleAction() {
        if applesCount == 0 {
            showingAlert = true
        } else {
            applesCount -= 1
        }
    }
}

#Preview {
    ContentView()
}
