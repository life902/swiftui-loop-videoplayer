//
//  PlaybackCommand.swift
//
//
//  Created by Igor  on 06.08.24.
//

import AVFoundation

/// An enumeration of possible playback commands.
@available(iOS 14.0, macOS 11.0, tvOS 14.0, *)
public enum PlaybackCommand: Equatable {
    /// Command to play the video.
    case play
    
    /// Command to pause the video.
    case pause
    
    /// Command to seek to a specific time in the video.
    /// - Parameter time: The CMTime representing the target position to seek to in the video.
    case seek(to: Double)
    
    public static func == (lhs: PlaybackCommand, rhs: PlaybackCommand) -> Bool {
        switch (lhs, rhs) {
        case (.play, .play):
            return true
        case (.pause, .pause):
            return true
        case (.seek(let lhsTime), .seek(let rhsTime)):
            return lhsTime == rhsTime
        default:
            return false
        }
    }
}