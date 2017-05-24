#!/bin/sh

xcodebuild -project NaturalKorean.xcodeproj -scheme NaturalKorean -destination 'platform=iOS Simulator,name=iPhone 7' build-for-testing test | xcpretty
