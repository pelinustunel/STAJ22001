//
//  LottieView.swift
//  LottieXSwiftUI
//
//  Created by Pelin Üstünel on 17.07.2024.
//



import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    
    typealias UIViewType = UIView
    var filesname : String
    
    func makeUIView(context:
        UIViewRepresentableContext<LottieView>)-> UIView {
             let view = UIView(frame: .zero)
             let animationView = AnimationView()
             let animation = Animation.named (filesname)
             animationView.animation = animation
             animationView.contentMode =  .scaleAspectFit
             animationView.play()
             animationView.play(fromProgress: 0,
                                toProgress: 1,
                                loopMode: LottieLoopMode.repeat(15),
                                completion: { (finished) in
                                 if finished {
                                     print("Success")
                                   } else {
                                  print("Error")
                                  }
                               })
            animationView.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(animationView)
            
            NSLayoutConstraint.activate([animationView.widthAnchor.constraint(equalTo:view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo:view.heightAnchor)])
           
            return view
          }
    
        func updateUIView( _ uiView: UIView, context:
            UIViewRepresentableContext<LottieView>){
                }
          }



