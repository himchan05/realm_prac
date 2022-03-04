//
//  ContentView.swift
//  realmdemo
//
//  Created by 박힘찬 on 2022/03/04.
//

import SwiftUI
import RealmSwift
class DateRealm: Object {
    @objc dynamic var year = ""
    @objc dynamic var month = ""
    @objc dynamic var day = ""
}
struct ContentView: View {
    init() {
        let dateSelected = DateRealm()
        dateSelected.year = "1997"
        dateSelected.month = "05"
        dateSelected.day = "23"
        
        let realm = try! Realm()
        print(Realm.Configuration.defaultConfiguration.fileURL!)

        try! realm.write { // Realm에 데이터 저장
            realm.add(dateSelected)
        }
    }
    var body: some View {
        Text("Hello, world!")
            .padding()
            .background(Color.red)
        
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
