import Foundation
class DataStore {
    func resetData() {
        userDefaults.removeObject(forKey: key)
 
    }
    static let shared = DataStore()

    private let userDefaults = UserDefaults.standard
    private let key = "myData"

    var myData: String? {
        get {
            return userDefaults.string(forKey: key)
        }
        set {
            userDefaults.set(newValue, forKey: key)
        }
        
    }
}
class DataStore2 {
    func resetData() {
        userDefaults.removeObject(forKey: key2)
        userDefaults.removeObject(forKey: segmentedControlKey)
        userDefaults.removeObject(forKey: segmentDataKey)

    
    }
    static let shared = DataStore2()

    private let userDefaults = UserDefaults.standard
    private let key2 = "myData2"

    var myData2: String? {
        get {
            return userDefaults.string(forKey: key2)
        }
        set {
            userDefaults.set(newValue, forKey: key2)
        }
    }

    private let segmentedControlKey = "selectedSegmentIndex"
    var selectedSegmentIndex: Int {
        get {
            return userDefaults.integer(forKey: segmentedControlKey)
        }
        set {
            userDefaults.set(newValue, forKey: segmentedControlKey)
        }
    }

    private let segmentDataKey = "segmentData"
    var segmentData: [String] {
        get {
            return userDefaults.array(forKey: segmentDataKey) as? [String] ?? []
        }
        set {
            userDefaults.set(newValue, forKey: segmentDataKey)
        }
    }

    private init() {}

    func selectSegment(at index: Int) -> String? {
        if index < 0 || index >= segmentData.count {
            return nil
        }
        let selectedData = segmentData[index]
        selectedSegmentIndex = index
        return selectedData
    }
}
class DataStore3 {
    func resetData() {
        userDefaults.removeObject(forKey: key3)
        userDefaults.removeObject(forKey: segmentedControlKey)
        userDefaults.removeObject(forKey: segmentDataKey)
        userDefaults.removeObject(forKey: switchStateKey)
    }
    static let shared = DataStore3()

    private let userDefaults = UserDefaults.standard
    private let key3 = "myData3"

    var myData3: String? {
        get {
            return userDefaults.string(forKey: key3)
        }
        set {
            userDefaults.set(newValue, forKey: key3)
        }
    }

    private let segmentedControlKey = "selectedSegmentIndex"
    var selectedSegmentIndex: Int {
        get {
            return userDefaults.integer(forKey: segmentedControlKey)
        }
        set {
            userDefaults.set(newValue, forKey: segmentedControlKey)
        }
    }

    private let segmentDataKey = "segmentData"
    var segmentData: [String] {
        get {
            return userDefaults.array(forKey: segmentDataKey) as? [String] ?? []
        }
        set {
            userDefaults.set(newValue, forKey: segmentDataKey)
        }
    }

    private let switchStateKey = "switchState"
    var switchState: [Bool] {
        get {
            return userDefaults.array(forKey: switchStateKey) as? [Bool] ?? [false, false, false, false, false, false]
        }
        set {
            userDefaults.set(newValue, forKey: switchStateKey)
        }
    }

    private init() {}

    func selectSegment(at index: Int) -> String? {
        if index < 0 || index >= segmentData.count {
            return nil
        }
        let selectedData = segmentData[index]
        selectedSegmentIndex = index
        return selectedData
    }
}
