//
//  EView.swift
//  SwiftUI-Data
//
//  Created by Asaad Jaber on 05/01/2024.
//

import Foundation
import SwiftUI

struct EView: View {
    @Environment(\.locale) var locale: Locale
    @State private var selectedLocale: LocaleSelection = .englishUS
    
    var wallet: Wallet = Wallet(balance: 14, locale: Locale.current)
    
    var body: some View {
        List {
            Section("Sample Wallet") {
                HStack {
                    Text("Date")
                    Spacer()
                    Text(wallet.getDate(locale: selectedLocale.locale))
                }
                HStack {
                    Text("Balance")
                    Spacer()
                    Text(wallet.getBalance(locale: selectedLocale.locale))
                }
            }
            Section("Locale") {
                Picker("Locale", selection: $selectedLocale) {
                    Text("Arabic").tag(LocaleSelection.arabic)
                    Text("English (U.S.)").tag(LocaleSelection.englishUS)
                    Text("English (U.K.)").tag(LocaleSelection.englishUK)
                }
            }
        }.listStyle(.insetGrouped)
    }
}

enum LocaleSelection: String, CaseIterable, Identifiable {
    case arabic, englishUS, englishUK
    var name: String {
        switch self {
        case .arabic:
            "Arabic"
        case .englishUS:
            "English (U.S.)"
        case .englishUK:
            "English (UK)"
        }
    }
    var id: String {
        switch self {
        case .arabic:
            "ar"
        case .englishUS:
            "en-US"
        case .englishUK:
            "en-UK"
        }
    }
    var locale: Locale {
        Locale(identifier: self.id)
    }
}

#Preview {
    EView()
}
