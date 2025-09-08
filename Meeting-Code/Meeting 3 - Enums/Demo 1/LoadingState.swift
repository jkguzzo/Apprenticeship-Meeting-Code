//
//  LoadingState.swift
//  Meeting-Code
//
//  Created by Julia Guzzo on 9/7/25.
//

import Foundation

enum LoadingState {
    case idle
    case loading
    case success(String)
    case failure(String)
}
