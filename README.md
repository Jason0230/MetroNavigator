# Metro Navigator App

The Metro Station Stop Notifier is a personal iOS app designed to make metro travel stress-free. It finds the optimal route between two metro stations, prioritizing minimal train switching, and uses GPS tracking with a distance-based fallback to provide real-time notifications. The app alerts you when you’re about to arrive at your destination or when it’s time to switch trains.

## Features
+ Optimal Pathfinding - Calculates the route between stations with the fewest amount of train switching
+ GPS Tracking - Monitors your location in real time for notifications
+ Distance Fallback - Ensures reliability even in areas with poor GPS Signal
+ Notifications - Alerts you when you're approaching a station or need to switch trains

## Tech Stack
+ Languages: Swift
+ Frameworks: CoreLocation, SwiftUI
+ Algorithms: Modified BFS Graph Search

## Requirements

Metro Navigator App requires the following to deploy on an iOS device
+ macOS device with Xcode 15+ installed
+ iOS 16+ device 

## Installation

1. Clone the Repository

```bash
git clone https://github.com/Jason0230/MetroNavigator.git
```
2. Open the Project in Xcode 
3. Connect your desired iOS device to your macOS Device and run the project in Xcode

## Usage

1. Select your Starting Station and Destination Station in the Drop Down
2. The app calculates the route with minimal train switching
3. Get real-time alerts when you're near a station or transfer point. 



