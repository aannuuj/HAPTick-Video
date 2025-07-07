# HAPtick

A framework for synchronized video and haptic feedback playback on iOS devices.

## Overview

The HAPtick framework provides a seamless way to integrate synchronized video and haptic feedback playback in your iOS applications. It combines AVFoundation's video capabilities with CoreHaptics to deliver immersive user experiences.

## Requirements

- iOS 15.0+
- Devices with haptic feedback support
- Xcode 13.0+
- Swift 5.9+

## Installation

### Swift Package Manager

To integrate HAPtick into your Xcode project using Swift Package Manager, add it to the dependencies value of your `Package.swift`:

```swift
dependencies: [
    .package(url: "https://github.com/aannuuj/haptick.git", from: "1.0.0")
]
```

Alternatively, you can add the package directly in Xcode using File → Add Package Dependencies... and enter the repository URL.

## Usage

Import the package in your source files:

```swift
import haptick
```

### Creating and Playing Haptic Videos

To start playing a video with haptic feedback:

```swift

// Create a HapticVideo instance with your video and haptic pattern URLs
let video = HapticVideo(videoURL: videoURL, hapticURL: hapticURL)

// Play the video
player.play(video)

// Stop playback when needed
player.stop()
```

### Error Handling

The framework provides comprehensive error handling through the `HapticVideoError` enum:

```swift
if let error = player.error as? HapticVideoError {
    switch error {
    case .hapticNotSupported:
        // Handle devices that don't support haptics
    case .hapticEngineNotAvailable:
        // Handle haptic engine initialization failures
    case .invalidVideoURL:
        // Handle invalid video URLs
    case .invalidHapticURL:
        // Handle invalid haptic pattern URLs
    }
}
```

## Available APIs

### Essentials
- `HapticVideoPlayerType`
- `HapticVideo`

### Error Handling
- `HapticVideoError`

### Working with HapticVideoPlayer
- `HapticVideoPlayerType.isPlaying`
- `HapticVideoPlayerType.currentVideo`
- `HapticVideoPlayerType.error`
- `HapticVideoPlayerType.play(_:)`
- `HapticVideoPlayerType.stop()`
- `HapticVideoPlayerType.getCurrentPlayer()`

## License

This is a commercial framework that requires a paid license for use. Contact [aannuuj@icloud.com] for licensing information and pricing.

### License Terms

- This framework is proprietary software
- A valid license is required for use in any application
- Unauthorized distribution or use is prohibited
- For pricing and licensing inquiries, please contact [aannuuj@icloud.com]

© 2024 All rights reserved. 
