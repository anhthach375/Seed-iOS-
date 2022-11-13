import SwiftUI
import Foundation
import AVKit

class SoundManager{
    static let instance = SoundManager()
    var player: AVAudioPlayer?
    func playSound(){
        guard let url = Bundle.main.url(forResource: "happy", withExtension: ".mp3") else {return}
        do {
            player = try AVAudioPlayer(contentsOf: url )
            player?.play()
        } catch let error {
            print("Error playing sound. \(error.localizedDescription)")
        }

    }
}

struct AskingQuestion: View {

    @EnvironmentObject var listViewModel: ListViewModel

    @AppStorage("currentPage") var currentPage = 1

    func buttonPressed(){

        print("Button")}


    var body: some View {

        NavigationView{
            ZStack{
                Color(red: 1, green: 0.90, blue: 1.0)
                    .ignoresSafeArea()

                VStack{
                    HStack (spacing: 280){
                        Button(action: {
                        withAnimation(.easeInOut){
                            currentPage -= 1
                        }
                    
                    }, label: {
 
                        Image(systemName: "chevron.left")

                            .foregroundColor(.white)
                            .frame(width: 25, height: 25)
                            .foregroundColor(.white)

                            .padding(.vertical, 10)
                        
                            .padding(.horizontal)
    
                            .background(Color.black.opacity(0.4))
                            .cornerRadius(20)
                        
                        
                        
                    })
                        
                    Button(action: {SoundManager.instance.playSound()}){
                        Image(systemName: "speaker")
                            .foregroundColor(.black)
                            .frame(width: 25, height: 25)
                    }
                }
                    .padding(.top, -70)

                    Image("SEED Prototype")

                        .resizable()

                        .frame(width:500, height: 500)

                
                    HStack (

                        alignment:.center,

                        spacing: 65){


                            Button(action:{

                                buttonPressed()

                            }){

                                Image("smiling face")

                                    .resizable()

                                    .frame(width:65, height: 65)

                                    .offset(x: 9)

                            }

                            

                            Button(action:{

                                buttonPressed()

                            }){

                                Image("neutral face")

                                    .resizable()

                                    .frame(width:65, height: 65)

                                    .offset(x: 9)

                            }

                            

                            Button(action:{

                                buttonPressed()

                            }){

                                Image("loudly crying face")

                                    .resizable()

                                    .frame(width:65, height: 65)

                                    .offset(x: 5)

                            }

                        }

                    HStack (

                        alignment:.center,

                        spacing: 72){

                            NavigationLink(destination: Diary1().navigationBarBackButtonHidden(true), label: {

                                Text("Happy")

                                    .font(.system(size: 20))

                                    .foregroundColor(.gray)

                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)

                            })

                                //("Happy", destination: Diary1())

                            NavigationLink(destination: Diary2().navigationBarBackButtonHidden(true), label: {

                                Text("Neutral")

                                    .font(.system(size: 20))

                                    .foregroundColor(.gray).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)

                            })

                            NavigationLink(destination: Diary3().navigationBarBackButtonHidden(true), label: {

                                Text("Sad")

                                    .font(.system(size: 20))

                                    .foregroundColor(.gray)

                                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)

                            })

                        }

                }

            }

        }

        

    }

    

    struct ContentView_Previews: PreviewProvider {

        static var previews: some View {

            NavigationView{

                AskingQuestion()

            }

            .environmentObject(ListViewModel())

        }

    }

}
