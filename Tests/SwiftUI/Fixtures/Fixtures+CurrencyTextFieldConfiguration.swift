//
//  Fixtures+CurrencyTextFieldConfiguration.swift
//  
//
//  Created by Marino Felipe on 25.04.21.
//

import SwiftUI

import CurrencyFormatter
import CurrencyTextField

@available(iOS 13.0, *)
extension CurrencyTextFieldConfiguration {
    static func makeFixture(
        placeholder: String = "some",
        textBinding: Binding<String> = .init(
            get: { "text" },
            set: { _ in }
        ),
        unformattedTextBinding: Binding<String?> = .init(
            get: { "unformatted" },
            set: { _ in }
        ),
        inputAmountBinding: Binding<Double?> = .init(
            get: { .zero },
            set: { _ in }
        ),
        clearsWhenValueIsZero: Bool = true,
        formatter: CurrencyFormatter,
        underlyingTextFieldConfiguration: ((UITextField) -> Void)? = { _ in },
        onEditingChanged: ((Bool) -> Void)? = { _ in },
        onCommit: (() -> Void)? = { }
    ) -> Self {
        .init(
            placeholder: placeholder,
            text: textBinding,
            unformattedText: unformattedTextBinding,
            inputAmount: inputAmountBinding,
            clearsWhenValueIsZero: clearsWhenValueIsZero,
            formatter: formatter,
            underlyingTextFieldConfiguration: underlyingTextFieldConfiguration,
            onEditingChanged: onEditingChanged,
            onCommit: onCommit
        )
    }
}