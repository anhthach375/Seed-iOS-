import Foundation







import SwiftUI







struct Tutorials: View {

    

    @AppStorage("currentPage") var currentPage = 1

    

    

    

    var body: some View{

        

        //        if currentPage < 3 {

        

        WalkThroughScreen()

        

        //        }

        

        //        else {

        

        //            WalkThroughScreen()

        

        //        }

        

    }

    

}







struct WalkThroughScreen: View {

    

    @AppStorage("currentPage") var currentPage = 1

    

    

    

    var body: some View{

        

        ZStack{

            

            if currentPage == 1{

                

                ScreenView(image: "happyTree-1", instruction: "Hey, here is your soul tree, let’s grow it together!")

                

                    .transition(.scale)

                

            }

            

            if currentPage == 2{

                

                ScreenView(image: "happyTree-2", instruction: "When you're happy, a leaf will be added to the tree")

                

                    .transition(.scale)

                

            }

            

            if currentPage == 3{

                

                ScreenView(image: "happyTree-3", instruction: "When you're sad, a leaf will fall and be added to a basket!")

                

                    .transition(.scale)

                

            }

            

             if currentPage == 4{

            

                 AskingQuestion()

                 

                     .transition(.scale)

            

                    }

            

            

            

        }

        

    }

    

}



struct ScreenView: View{

    

    var image: String

    

    var instruction: String

    

    @AppStorage("currentPage") var currentPage = 1

    

    

    

    var body: some View{

        

        let purple = Color(red: 1, green: 0.90, blue: 1.0)

        

        ZStack{

            

            VStack(){

                

                HStack (spacing: 230) {

                    

                    if currentPage == 1 {

                        

                        Text("Hello!")

                        

                            .font(.title)

                        

                            .fontWeight(.semibold)

                        

                            //.kerning(1.4)

                        

                    }

                    

                    else {

                        

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

                        

                    }

                    

                    

                    

                    Button(action: {

                        

                        withAnimation(.easeInOut){

                            

                            currentPage = 4

                            

                        }

                        

                    }, label: {

                        

                        Text("Skip")

                        

                            .fontWeight(.semibold)

                        

                            //.kerning(1.2)

                        

                    })

                    

                }

                

                

                

                .foregroundColor(.purple)

                

                .padding()

                

                

                

                Text(instruction)

                

                    .font(.system(size: 20, design: .rounded))

                

                    .fontWeight(.semibold)

                

                    .padding()

                

                    //.kerning(1.2)

                

                    .frame(width: 320, height: 110)

                

                    .multilineTextAlignment(.center)

                

                    .background(Color.white)

                

                    .cornerRadius(15)

                

                    .foregroundColor(Color.purple)

                

                

                

                Image(image)

                

                    .resizable()

                

                    .frame(width: 630.0, height: 500.0)

                

                    .aspectRatio(contentMode: .fit)

                

                

                

                Button(action:{

                    

                    // changing views

                    

                    withAnimation(.easeInOut){

                        

                        if currentPage < totalPages{

                            

                            currentPage += 1

                            

                        }

                        else if currentPage == 3{

                            currentPage += 1

                        }

                        else {

                            

                            currentPage = 1

                            

                        }

                        

                    }

                    

                    

                    

                }, label:{

                    

                    Image(systemName: "chevron.right")

                    

                        .font(.system(size: 30, weight: .semibold))

                    

                        .foregroundColor(.purple)

                    

                        .frame(width: 60, height: 60)

                    

                        .clipShape(Circle())

                    

                        .padding()

                    

                        .overlay(

                            

                            ZStack{

                                

                                Circle()

                                

                                    .stroke(Color.black.opacity(0.04), lineWidth: 4)

                                

                                Circle()

                                

                                    .trim(from: 0, to: 0.3)

                                

                                    .stroke(Color.white, lineWidth: 4)

                                

                                    .rotationEffect(.init(degrees: -90))

                                

                                

                                

                            }

                            

                        )

                    

                    

                    

                })

                

                .padding(.bottom, 10)

                

            }

            

        }

        

        .background(purple.ignoresSafeArea())

        

    }

    

    var totalPages = 3

    

    

    

    struct ContentView_Previews: PreviewProvider {

        

        static var previews: some View {

            

            WalkThroughScreen()

            

        }

        

    }

    

    

    

}
