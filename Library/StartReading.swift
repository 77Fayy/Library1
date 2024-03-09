//
//  SwiftUIView.swift
//  Library
//
//  Created by fai alradhi on 28/08/1445 AH.
//

import SwiftUI

struct reading: View {
    // Article texts
    let articleTexts = [
           "في أرض بعيدة، كان هناك قرية جميلة تسمى الحسون تعيش فيها عائلة الحسون، وهم: أبو حسون وأم حسون وأولادهما الأربعة، علي وليلى ويوسف وسارة. كانت العائلة معروفة بكرمها وسعادتها وتعاونها مع    جيرانها في القرية.                                                                                                                           وفي يوم من الأيام، قررت عائلة الحسون تنظيم حفل كبير في منزلها للاحتفال بعيد ميلاد وليلى، وكانت الدعوات قد وُجِّهت لجميع أهالي القرية. وكان الحفل مليئًا بالفرح والبهجة، وتجمع الجميع حول الطاولات المزينة بالأكل اللذيذ والحلويات الشهية.                                           وفي الحفل، كان هناك طائر صغير اسمه ياسر، كان يشعر بالغيرة من عائلة الحسون لأنهم كانوا يعيشون في منزل كبير وسعيد ويمتلكون الكثير من الأصدقاء. وقرر ياسر أن يقوم بخطة لجعل عائلة الحسون تشعر بالحزن والخوف.               بدأ ياسر في نشر الشائعات والأكاذيب حول عائلة الحسون، مما أدى إلى إحداث الفتنة والتوتر بين سكان القرية. وبدأت عائلة الحسون تشعر بالاضطراب والحزن لأنهم لم يفهموا سبب هذه الأقاويل الشريرة.",
           "وفي النهاية، اكتشفت العائلة الحسون الحقيقة وهي أن ياسر هو من كان يثير الفتنة والشائعات. فتعلم ياسر درسًا قاسيًا حول أهمية الصدق والتعاون وعدم الإضرار بالآخرين. وقرر ياسر أن يعتذر لعائلة الحسون ويصارحهم بأنه كان مخطئًا وأنه لن يفعل ذلك مرة                                     أخرى.                                                                                                                                        وبعد ذلك، عادت السلامة والسرور إلى قرية الوردية، وتعلم الجميع درسًا هامًا حول أهمية الصدق والتعاون والتسامح. وعاشت عائلة الحسون وجيرانهم في سلام ووئام، محققةً بذلك السعادة والسلام الدائمين في قلوبهم."
       ]
    
    @State private var selectedPageIndex = 0
    @State private var textColor = Color.black // Initial text color
    private var progress: Float {
           return Float(selectedPageIndex + 1) / Float(articleTexts.count)
       }
    var body: some View {
        VStack {
            // Navigation-like bar
            HStack {
                Button(action: {
                    // Action to go back or decrease page index
                    if selectedPageIndex > 0 {
                        selectedPageIndex -= 1
                    }
                }) {
                    Image(systemName: "chevron.right")
                        .foregroundColor(.blue)
                        .padding()
                }
                
                Spacer()
                
                Text("قرية الحسون")
                    .font(.title)
                    .padding()
                
                Spacer()
                
                // Button to manually increase the progress bar
                Button(action: {
                    // Action to increase page index
                    if selectedPageIndex < articleTexts.count - 1 {
                        selectedPageIndex += 1
                    }
                }) {
                    Image(systemName: "chevron.left")
                        .foregroundColor(.blue)
                        .padding()
                }
            }
            
            // Progress bar view
            ProgressView(value: progress)
                .progressViewStyle(LinearProgressViewStyle(tint: .blue))
                .padding()
            
            
            // Page-view for articles
            TabView(selection: $selectedPageIndex) {
                ForEach(0..<articleTexts.count, id: \.self) { index in
                    ScrollView {
                        Text(articleTexts[index])
                                                  .foregroundColor(textColor) // Bind text color to state
                                                  .multilineTextAlignment(.leading) // Align text to the right
                                                  .padding()
                                                  .tag(index)                    }
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
            .frame(height: 600) // Set the appropriate height

            // Page control indicators
            PageControl(numberOfPages: articleTexts.count, currentPage: $selectedPageIndex)
                .padding(.bottom)

            // Color picker for changing text color
            ColorPicker("اختر لونك المفضل", selection: $textColor)
                          .padding()
                  }
                  .environment(\.layoutDirection, .rightToLeft)
    }
}

struct PageControl: UIViewRepresentable {
    var numberOfPages: Int
    @Binding var currentPage: Int

    func makeUIView(context: Context) -> UIPageControl {
        let pageControl = UIPageControl()
        pageControl.numberOfPages = numberOfPages
        return pageControl
    }

    func updateUIView(_ uiView: UIPageControl, context: Context) {
        uiView.currentPage = currentPage
    }
}

struct ContentView81_Previews: PreviewProvider {
    static var previews: some View {
        reading()
    }
}
