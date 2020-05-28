//
//  LogLevel.swift
//  SwiftServicesFramework
//
//  Created by Sudara Fernando on 28/05/20.
//

import Foundation

public enum LogLevel: Int, Comparable, CaseIterable {
	case verbose
	case debug
	case info
	case warning
	case error
	case critical

	/// Disables a log store when used as minimum level
	case none = 99

	static func < (lhs: LogLevel, rhs: LogLevel) -> Bool {
		lhs.rawValue < rhs.rawValue
	}
}
