## Pod
Add new library with pod
1. add new library in `Podfile`
2. run command `pod install`

## Carthage
Adding new library with carthage
1. add new library in `Cartfile`
2. Create binary framework with command `carthage update --platform iOS`
3. Embedded binary / framework in project by
   - 3.1 open project target and click tab `General`
   - 3.2 section `Frameworks, Libraries, and Embedded Contant` add framework here
   - 3.3 add framework path to file `input.xcfilelist`
   - 3.4 add framework path to file `output.xcfilelist`

## Rome
Rome is tool for caching carthage libary and can share binary file along machine. Rome can have both local cache and remote cache (AWS)

setting up rome with following step:
1. create cache foolder `mkdir -p  ~/Library/Caches/Rome/`
2. build carthage binary with `carthage update --platform iOS`
2. upload binary to cache `rome upload --platform ios --cache-prefix swift5_1`
3. download binary from cache `rome download --platform ios --cache-prefix swift5_1`

note: some library might have different library name and filename so we need to map those name under `repositoryMap` section here are an example
```YAML
repositoryMap:
  - ActionSheetPicker-3.0:
    - name: CoreActionSheetPicker
  - libPhoneNumber-iOS:
    - name: libPhoneNumberiOS
  - XCGLogger:
    - name: XCGLogger
    - name: ObjcExceptionBridging
  - realm-cocoa:
    - name: Realm
    - name: RealmSwift
  - Reachability.swift:
    - name: Reachability
  - LocationManager:
    - name: INTULocationManager
  - lottie-ios:
    - name: lottie
  - RxDataSources:
    - name: RxDataSources
    - name: Differentiator
  - OneSignal-iOS-SDK:
    - name: OneSignal
  - RxSwift:
    - name: RxSwift
    - name: RxCocoa
    - name: RxTest
    - name: RxBlocking
    - name: RxAtomic
    - name: RxRelay
  - Moya:
    - name: Moya
    - name: Alamofire
    - name: RxMoya
    - name: ReactiveSwift
    - name: Result
  - SDWebImage:
    - name: SDWebImage
    - name: SDWebImageMapKit
  - Bolts-ObjC:
    - name: Bolts
  - Leanplum-iOS-SDK:
    - name: Leanplum
  - linesdk-ios-swift:
    - name: LineSDK
      platforms: [iOS]
  - Leanplum-iOS-Location:
    - name: LeanplumLocation
```
