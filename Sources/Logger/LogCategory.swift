//
//  LogCategory.swift
//  SwiftServicesFramework
//
//  Created by Sudara Fernando on 28/05/20.
//

import Foundation

#if canImport(SwiftUI)
import SwiftUI
#endif

public protocol LogCategory: Equatable {
	var category: String
}

public enum DefaultCategory: LogCategory {
	case `default`

	#if canImport(SwiftUI)
	case ui(view: View.Type)
	#endif

	var category: String {
		switch self {
		case .default: return "default"

		#if canImport(SwiftUI)
		case .ui(let view): return "ui-\(view)"
		#endif
		}
	}
}
