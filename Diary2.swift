import SwiftUI



struct Diary2: View {

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

                        Image("Star")

                            .resizable()

                            .scaledToFit()

                            .frame(width: 90.0, height: 100.0)

                        Text("Want to share something about your day?")

                            .multilineTextAlignment(.center)

                            .font(.system(size: 25, design: .rounded))

                            .frame(width: 250, height: 150)

                    }

                    TextField("Write something to your diary", text: $share)

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

                    .foregroundColor(Color.purple.opacity(0.9))

                    .padding()

                }

            }

        }

        

    }

    func buttonPressed (){

        listViewModel.addItem(emoji: "neutral face", title: share)

        //presentationMode.wrappedValue.dismiss()

    }

}

struct  Diary2_Previews: PreviewProvider {

    static var previews: some View {

        NavigationView{

            Diary2()

        }

        .environmentObject(ListViewModel())

    }

}





