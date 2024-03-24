//
//  CustomDividers.swift
//  Moonshot
//
//  Created by Vladyslav Dikhtiaruk on 24/03/2024.
//

import SwiftUI

struct CustomDividers: View {
    var body: some View {
        Rectangle()
            .frame(height: 2)
            .foregroundColor(.lightBackground)
            .padding(.vertical)
    }
}

#Preview {
    CustomDividers()
}
