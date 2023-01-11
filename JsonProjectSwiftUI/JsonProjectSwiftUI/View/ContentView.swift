import SwiftUI
import Foundation





struct ContentView: View {
    var viewModel = NewsViewModel()
    var body: some View {
        NavigationView{
            List{
                ForEach(viewModel.news, id: \.self) {
                    course in
                    
                        HStack{
                            Text("\(course.points!)")
                            Text(course.title!)
                        }
                        .padding(3)
                    }
                    
            }
            .navigationTitle("Courses")
            .onAppear{
                viewModel.fetch()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
