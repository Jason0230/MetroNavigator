//
//  SwitchWindowButton.swift
//  Metro
//
//  Created by Jason Li on 11/24/24.
//

import SwiftUI

struct Page1: View {
    
    //list of stations for the dropdown
    let stationsList: [String] = ["Addison Rd 🔵🪙", "Anacostia 🟢", "Archives 🟡🟢", "Arlington Cemetery 🔵", "Ashburn 🪙", "Ballston-MU 🪙🟠", "Benning Rd 🔵🪙", "Bethesda 🔴", "Braddock Rd 🔵🟡", "Branch Ave 🟢", "Brookland-CUA 🔴", "Capitol Heights 🔵🪙", "Capitol South 🔵🪙🟠", "Cheverly 🟠", "Clarendon 🪙🟠", "Cleveland Park 🔴", "College Park-U of Md 🟢", "Columbia Heights 🟢", "Congress Heights 🟢", "Court House 🪙🟠", "Crystal City 🔵🟡", "Deanwood 🟠", "Downtown Largo 🔵🪙", "Dunn Loring 🟠", "Dupont Circle 🔴", "East Falls Church 🪙🟠", "Eastern Market 🔵🪙🟠", "Eisenhower Ave 🟡", "Farragut North 🔴", "Farragut West 🔵🪙🟠", "Federal Center SW 🔵🪙🟠", "Federal Triangle 🔵🪙🟠", "Foggy Bottom-GWU 🔵🪙🟠", "Forest Glen 🔴", "Fort Totten 🔴🟢", "Franconia-Springfield 🔵", "Friendship Heights 🔴", "Gallery Place 🔴🟡🟢", "Georgia Ave-Petworth 🟢", "Glenmont 🔴", "Greenbelt 🟢", "Greensboro 🪙", "Grosvenor-Strathmore 🔴", "Herndon 🪙", "Huntington 🟡", "Hyattsville Crossing 🟢", "Innovation Center 🪙", "Judiciary Sq 🔴", "King St-Old Town 🔵🟡", "L'Enfant Plaza 🔵🪙🟠🟡🟢", "Landover 🟠", "Loudoun Gateway 🪙", "McLean 🪙", "McPherson Sq 🔵🪙🟠", "Medical Center 🔴", "Metro Center 🔴🔵🪙🟠", "Minnesota Ave 🟠", "Morgan Blvd 🔵🪙", "Mt Vernon Sq 🟡🟢", "Navy Yard-Ballpark 🟢", "Naylor Rd 🟢", "New Carrollton 🟠", "NoMa-Gallaudet U 🔴", "North Bethesda 🔴", "Pentagon 🔵🟡", "Pentagon City 🔵🟡", "Potomac Ave 🔵🪙🟠", "Potomac Yard 🔵🟡", "Reston Town Center 🪙", "Rhode Island Ave 🔴", "Rockville 🔴", "Ronald Reagan Washington National Airport 🔵🟡", "Rosslyn 🔵🪙🟠", "Shady Grove 🔴", "Shaw-Howard U 🟢", "Silver Spring 🔴", "Smithsonian 🔵🪙🟠", "Southern Ave 🟢", "Spring Hill 🪙", "Stadium-Armory 🔵🪙🟠", "Suitland 🟢", "Takoma 🔴", "Tenleytown-AU 🔴", "Twinbrook 🔴", "Tysons 🪙", "U St 🟢", "Union Station 🔴", "Van Dorn St 🔵", "Van Ness-UDC 🔴", "Vienna 🟠", "Virginia Sq-GMU 🪙🟠", "Washington Dulles International Airport 🪙", "Waterfront 🟢", "West Falls Church 🟠", "West Hyattsville 🟢", "Wheaton 🔴", "Wiehle-Reston East 🪙", "Woodley Park 🔴"]
    
    @State var selectedFrom: String
    @State var selectedTo: String
    
    //map that the values correlate to the station name
    let map: [String:String] = ["Addison Rd 🔵🪙" : "Addison Rd", "Ashburn 🪙" : "Ashburn", "Anacostia 🟢" : "Anacostia", "Ballston-MU 🪙🟠" : "Ballston-MU", "Benning Rd 🔵🪙" : "Benning Rd", "Capitol Heights 🔵🪙" : "Capitol Heights", "Archives 🟡🟢" : "Archives", "Cleveland Park 🔴" : "Cleveland Park", "Capitol South 🔵🪙🟠" : "Capitol South", "Braddock Rd 🔵🟡" : "Braddock Rd", "Bethesda 🔴" : "Bethesda", "Federal Triangle 🔵🪙🟠" : "Federal Triangle", "Crystal City 🔵🟡" : "Crystal City", "College Park-U of Md 🟢" : "College Park-U of Md", "Arlington Cemetery 🔵" : "Arlington Cemetery", "Columbia Heights 🟢" : "Columbia Heights", "Dunn Loring 🟠" : "Dunn Loring", "Federal Center SW 🔵🪙🟠" : "Federal Center SW", "Dupont Circle 🔴" : "Dupont Circle", "Franconia-Springfield 🔵" : "Franconia-Springfield", "Congress Heights 🟢" : "Congress Heights", "Downtown Largo 🔵🪙" : "Downtown Largo", "Branch Ave 🟢" : "Branch Ave", "Glenmont 🔴" : "Glenmont", "Grosvenor-Strathmore 🔴" : "Grosvenor-Strathmore", "Deanwood 🟠" : "Deanwood", "Gallery Place 🔴🟡🟢" : "Gallery Place", "Farragut West 🔵🪙🟠" : "Farragut West", "Court House 🪙🟠" : "Court House", "Clarendon 🪙🟠" : "Clarendon", "Minnesota Ave 🟠" : "Minnesota Ave", "Georgia Ave-Petworth 🟢" : "Georgia Ave-Petworth", "Metro Center 🔴🔵🪙🟠" : "Metro Center", "Eastern Market 🔵🪙🟠" : "Eastern Market", "Eisenhower Ave 🟡" : "Eisenhower Ave", "Rockville 🔴" : "Rockville", "Medical Center 🔴" : "Medical Center", "Morgan Blvd 🔵🪙" : "Morgan Blvd", "Greensboro 🪙" : "Greensboro", "Mt Vernon Sq 🟡🟢" : "Mt Vernon Sq", "Friendship Heights 🔴" : "Friendship Heights", "Huntington 🟡" : "Huntington", "East Falls Church 🪙🟠" : "East Falls Church", "Farragut North 🔴" : "Farragut North", "Foggy Bottom-GWU 🔵🪙🟠" : "Foggy Bottom-GWU", "Brookland-CUA 🔴" : "Brookland-CUA", "Ronald Reagan Washington National Airport 🔵🟡" : "Ronald Reagan Washington National Airport", "Potomac Yard 🔵🟡" : "Potomac Yard", "Landover 🟠" : "Landover", "Hyattsville Crossing 🟢" : "Hyattsville Crossing", "Pentagon 🔵🟡" : "Pentagon", "West Falls Church 🟠" : "West Falls Church", "Rhode Island Ave 🔴" : "Rhode Island Ave", "Woodley Park 🔴" : "Woodley Park", "Judiciary Sq 🔴" : "Judiciary Sq", "Smithsonian 🔵🪙🟠" : "Smithsonian", "McLean 🪙" : "McLean", "Spring Hill 🪙" : "Spring Hill", "Pentagon City 🔵🟡" : "Pentagon City", "Vienna 🟠" : "Vienna", "Herndon 🪙" : "Herndon", "Tenleytown-AU 🔴" : "Tenleytown-AU", "Twinbrook 🔴" : "Twinbrook", "New Carrollton 🟠" : "New Carrollton", "Waterfront 🟢" : "Waterfront", "West Hyattsville 🟢" : "West Hyattsville", "Potomac Ave 🔵🪙🟠" : "Potomac Ave", "Suitland 🟢" : "Suitland", "King St-Old Town 🔵🟡" : "King St-Old Town", "Fort Totten 🔴🟢" : "Fort Totten", "Wiehle-Reston East 🪙" : "Wiehle-Reston East", "Washington Dulles International Airport 🪙" : "Washington Dulles International Airport", "Van Dorn St 🔵" : "Van Dorn St", "Wheaton 🔴" : "Wheaton", "Naylor Rd 🟢" : "Naylor Rd", "Takoma 🔴" : "Takoma", "Navy Yard-Ballpark 🟢" : "Navy Yard-Ballpark", "Southern Ave 🟢" : "Southern Ave", "Virginia Sq-GMU 🪙🟠" : "Virginia Sq-GMU", "Shaw-Howard U 🟢" : "Shaw-Howard U", "Reston Town Center 🪙" : "Reston Town Center", "NoMa-Gallaudet U 🔴" : "NoMa-Gallaudet U", "Innovation Center 🪙" : "Innovation Center", "Stadium-Armory 🔵🪙🟠" : "Stadium-Armory", "L'Enfant Plaza 🔵🪙🟠🟡🟢" : "L'Enfant Plaza", "Shady Grove 🔴" : "Shady Grove", "North Bethesda 🔴" : "North Bethesda", "McPherson Sq 🔵🪙🟠" : "McPherson Sq", "Forest Glen 🔴" : "Forest Glen", "Loudoun Gateway 🪙" : "Loudoun Gateway", "Greenbelt 🟢" : "Greenbelt", "Union Station 🔴" : "Union Station", "Cheverly 🟠" : "Cheverly", "Silver Spring 🔴" : "Silver Spring", "Rosslyn 🔵🪙🟠" : "Rosslyn", "Van Ness-UDC 🔴" : "Van Ness-UDC", "Tysons 🪙" : "Tysons", "U St 🟢" : "U St"]
    
    var body: some View {
        NavigationView{
            VStack{
                DropDownView(title: "From", prompt: "Select", options: stationsList, selection: $selectedFrom)
                DropDownView(title: "To", prompt: "Select", options: stationsList, selection: $selectedTo)
                
                if (selectedFrom != "Select" && selectedTo != "Select"){
                    NavigationLink(destination: ContentView(start:map[selectedFrom]!, end:map[selectedTo]!)){
                        Text("Find Route!").frame(width:300, height:150, alignment: .center).background(Color.gray).foregroundColor(Color.black).cornerRadius(50)
                        
                    }
                }
            }
        }
    }
}

#Preview {
    Page1(selectedFrom: "Herndon 🪙", selectedTo: "Greenbelt 🟢")
}
