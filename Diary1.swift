import SwiftUI



struct Diary1: View {

    @State private var share = ""

    //@Environment(\.presentationMode) var presentationMode

    @EnvironmentObject var listViewModel: ListViewModel

    var body: some View {

        NavigationView {

            ZStack{

                Color.purple

                    .opacity(0.3)

                    .ignoresSafeArea()

                VStack{

                    HStack(){

                        Image("Heart")

                            .resizable()

                            .scaledToFit()

                            .frame(width: 90.0, height: 100.0)

                        Text("Awesome, what makes you happy today?")

                            .multilineTextAlignment(.center)

                            .font(.system(size: 25, design: .rounded))

                            .frame(width: 250, height: 150)

                    }

                    TextField("Write something to your diary (Optional)", text: $share)

                        .padding()

                        .multilineTextAlignment(.center)

                        .frame(width: 330, height: 480)

                        .background(Color.gray

                            .opacity(0.6))

                        .cornerRadius(20)

                        .padding()

                    Button( action: buttonPressed, label: {

                        Text("Add")

                            .foregroundColor(.white)

                            .frame(width:140, height:50)

                            .background(Color.purple)

                            .cornerRadius(20)

                    })

                    

                    Button(action: {}, label: {

                        HStack{



                            NavigationLink("Let's see your soul tree", destination: Profile().navigationBarBackButtonHidden(true))
                            

                                //.fontWeight(.semibold)

                            

                                //.kerning(0.2)

                            

                            

                            

                            Image(systemName: "arrow.right.circle")

                        }

                        

                    })

                    .foregroundColor(Color.purple.opacity(0.8))

                    .padding()

                    



                }

                     

            }

        }



    }

    

    func buttonPressed (){

        listViewModel.addItem(emoji: "smiling face", title: share)

        //presentationMode.wrappedValue.dismiss()

    }

}

struct  Diary1_Previews: PreviewProvider {

    static var previews: some View {

        NavigationView{

            Diary1()

        }

        .environmentObject(ListViewModel())

    }

}


