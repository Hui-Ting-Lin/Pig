//
//  ContentView.swift
//  147
//
//  Created by User24 on 2020/9/25.
//  Copyright © 2020 yuen. All rights reserved.
//

import SwiftUI

struct Blush: Shape{
    func path(in rect: CGRect) -> Path {
        Path { (path) in
            path.addArc(center: CGPoint(x: 125, y: 347), radius: 23, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
        }
    }
}

struct Chicken: Shape{
    func path(in rect: CGRect) -> Path {
        Path { (path) in
            path.move(to: CGPoint(x:355,y:365))
            path.addQuadCurve(to: CGPoint(x: 355, y: 380), control:CGPoint(x: 354, y: 380))
            path.addQuadCurve(to: CGPoint(x: 368, y: 396), control:CGPoint(x: 370, y: 386))
            path.addQuadCurve(to: CGPoint(x: 348, y: 395), control:CGPoint(x: 360, y: 410))
            path.addQuadCurve(to: CGPoint(x: 335, y: 405), control:CGPoint(x: 345, y: 405))
            path.addQuadCurve(to: CGPoint(x: 337, y: 380), control:CGPoint(x: 315, y: 398))
            path.addQuadCurve(to: CGPoint(x: 337, y: 365), control:CGPoint(x: 337, y: 370))
            path.addQuadCurve(to: CGPoint(x: 355, y: 365), control:CGPoint(x: 346, y: 358))
            //guto
  
            path.move(to: CGPoint(x:337,y:365))
            path.addQuadCurve(to: CGPoint(x: 285, y: 325), control:CGPoint(x: 300, y: 370))
            path.addQuadCurve(to: CGPoint(x: 303, y: 298), control:CGPoint(x: 325, y: 320))//middle 303 298 bottom 285 325 top 293 272
            path.addQuadCurve(to: CGPoint(x: 293, y: 272), control:CGPoint(x: 315, y: 280))
            path.addQuadCurve(to: CGPoint(x: 350, y: 237), control:CGPoint(x: 318, y: 230))
            path.addQuadCurve(to: CGPoint(x: 385, y: 272), control:CGPoint(x: 370, y: 240))
            path.addQuadCurve(to: CGPoint(x: 355, y: 365), control:CGPoint(x: 420, y: 360))
            
            path.move(to: CGPoint(x:293,y:272))
            path.addQuadCurve(to: CGPoint(x: 286, y: 298), control:CGPoint(x: 297, y: 290))
            path.addQuadCurve(to: CGPoint(x: 285, y: 325), control:CGPoint(x: 297, y: 310))
        }
    }
}

struct BlushView: View{
    var positionX: CGFloat = 0
    var positionY: CGFloat = 0
    
    var body: some View{
        Blush()
            .fill(Color(red: 251/255, green: 192/255, blue: 188/255))
            .position(x: positionX, y: positionY)
    }
}



struct ChickenView: View{
    var body: some View{
        Chicken()
            .stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)
    }
}
struct FullChicken: Shape{
    func path(in rect: CGRect) -> Path {
        Path { (path) in
            path.move(to: CGPoint(x:355,y:365))
            path.addQuadCurve(to: CGPoint(x: 355, y: 380), control:CGPoint(x: 354, y: 380))
            path.addQuadCurve(to: CGPoint(x: 368, y: 396), control:CGPoint(x: 370, y: 386))
            path.addQuadCurve(to: CGPoint(x: 348, y: 395), control:CGPoint(x: 360, y: 410))
            path.addQuadCurve(to: CGPoint(x: 335, y: 405), control:CGPoint(x: 345, y: 405))
            path.addQuadCurve(to: CGPoint(x: 337, y: 380), control:CGPoint(x: 315, y: 398))
            path.addQuadCurve(to: CGPoint(x: 337, y: 365), control:CGPoint(x: 337, y: 370))
            path.addQuadCurve(to: CGPoint(x: 355, y: 365), control:CGPoint(x: 346, y: 358))//guto
  
            path.move(to: CGPoint(x:337,y:365))
            path.addQuadCurve(to: CGPoint(x: 285, y: 325), control:CGPoint(x: 290, y: 365))//bottom285 325top293 272
            path.addQuadCurve(to: CGPoint(x: 293, y: 272), control:CGPoint(x: 280, y: 295))//!!!
            path.addQuadCurve(to: CGPoint(x: 350, y: 237), control:CGPoint(x: 318, y: 230))
            path.addQuadCurve(to: CGPoint(x: 385, y: 272), control:CGPoint(x: 370, y: 240))
            path.addQuadCurve(to: CGPoint(x: 355, y: 365), control:CGPoint(x: 420, y: 360))
        }
    }
}

struct ChickenView2: View{
    var body: some View{
        FullChicken()
            .stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)
    }
}



struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack{
                Group{
                    Image("background")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                    
                    Text("我要吃囉")
                        .scaleEffect(2)
                        .position(x:125, y:175)
                        
                        
                    
                    Group{//hand group
                        Path { (path) in
                            path.move(to: CGPoint(x:280,y:400))
                            path.addQuadCurve(to: CGPoint(x: 340, y: 375), control:CGPoint(x: 300, y: 410))//right arm top
                            path.addQuadCurve(to: CGPoint(x: 310, y: 450), control:CGPoint(x: 370, y: 410))//right arm bottom
                            path.addQuadCurve(to: CGPoint(x: 280, y: 400), control:CGPoint(x: 280, y: 410))
                        }.fill(Color(red: 254/255, green: 229/255, blue: 224/255))//right arm
                        
                        Path { (path) in
                            path.move(to: CGPoint(x:280,y:400))
                            path.addQuadCurve(to: CGPoint(x: 340, y: 375), control:CGPoint(x: 300, y: 410))//right arm top
                            path.addQuadCurve(to: CGPoint(x: 310, y: 450), control:CGPoint(x: 370, y: 410))//right arm bottom
                        }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//right arm
                        
                    }
                }
                
                Group{//color
                    Path { (path) in
                        path.move(to: CGPoint(x:120,y:230))
                        path.addQuadCurve(to: CGPoint(x: 256, y: 230), control:CGPoint(x: 188, y: 185))//head top
                        path.addQuadCurve(to: CGPoint(x: 290, y: 315), control:CGPoint(x: 280, y: 250))//face right top
                        path.addQuadCurve(to: CGPoint(x: 300, y: 375), control:CGPoint(x: 320, y: 360))//face right bottom
                        path.addQuadCurve(to: CGPoint(x: 78, y: 380), control:CGPoint(x: 200, y: 410))//face bottom
                        path.addQuadCurve(to: CGPoint(x: 80, y: 318), control:CGPoint(x: 45, y: 375))//face left bottom
                        path.addQuadCurve(to: CGPoint(x: 120, y: 230), control:CGPoint(x: 85, y: 250))//face left top
                    }.fill(Color(red: 254/255, green: 229/255, blue: 224/255))
                    //head!!
                
                
                    Path { (path) in
                        path.move(to: CGPoint(x:95,y:230))
                        path.addQuadCurve(to: CGPoint(x: 122, y: 250), control:CGPoint(x: 130, y: 200))//left ear top
                        path.addQuadCurve(to: CGPoint(x: 85, y: 260), control:CGPoint(x: 120, y: 280))//left ear bottom
                        path.addQuadCurve(to: CGPoint(x: 95, y: 230), control:CGPoint(x: 75, y: 250))//left ear left
                    }.fill(Color(red: 254/255, green: 229/255, blue: 224/255))//left ear!!
                
                    Path { (path) in
                        path.move(to: CGPoint(x:250,y:250))
                        path.addQuadCurve(to: CGPoint(x: 290, y: 250), control:CGPoint(x: 260, y: 200))//right ear top
                        path.addQuadCurve(to: CGPoint(x: 275, y: 273), control:CGPoint(x: 295, y: 270))//right ear bottom
                        path.addQuadCurve(to: CGPoint(x: 250, y: 250), control:CGPoint(x: 240, y: 280))//right ear left
                    }.fill(Color(red: 254/255, green: 229/255, blue: 224/255))//right ear!!
                
                    
                
                    Path { (path) in
                        path.move(to: CGPoint(x:300,y:375))
                        path.addQuadCurve(to: CGPoint(x: 78, y: 380), control:CGPoint(x: 200, y: 410))//neck top
                        path.addQuadCurve(to: CGPoint(x: 100, y: 420), control:CGPoint(x: 50, y: 420))//neck left
                        path.addQuadCurve(to: CGPoint(x: 283, y: 410), control:CGPoint(x: 180, y: 420))//neck bottom
                        path.addQuadCurve(to: CGPoint(x: 300, y: 375), control:CGPoint(x: 320, y: 400))//neck right
                    }.fill(Color(red: 254/255, green: 229/255, blue: 224/255))//neck
                    
                    Path { (path) in
                        path.move(to: CGPoint(x:80,y:415))
                        path.addQuadCurve(to: CGPoint(x: 190, y: 560), control:CGPoint(x: 0, y: 590))//ass
                        path.addQuadCurve(to: CGPoint(x: 340, y: 550), control:CGPoint(x: 250, y: 565))
                        //right leg
                        path.addQuadCurve(to: CGPoint(x: 340, y: 505), control:CGPoint(x: 330, y: 530))//right leg left
                        path.addQuadCurve(to: CGPoint(x: 320, y: 475), control:CGPoint(x: 328, y: 475))//dudu
                        path.addQuadCurve(to: CGPoint(x: 283, y: 410), control:CGPoint(x: 318, y: 450))//right body top
                        
                    }.fill(Color(red: 254/255, green: 229/255, blue: 224/255))//body
                    
                    
                    
                }
                
                Group{//brown color
                    Path { (path) in
                        path.move(to: CGPoint(x:340,y:550))
                        path.addQuadCurve(to: CGPoint(x: 340, y: 505), control:CGPoint(x: 330, y: 530))
                        path.addQuadCurve(to: CGPoint(x: 352, y: 512), control:CGPoint(x: 350, y: 506))
                        path.addQuadCurve(to: CGPoint(x: 347, y: 530), control:CGPoint(x: 350, y: 528))
                        path.addQuadCurve(to: CGPoint(x: 340, y: 550), control:CGPoint(x: 360, y: 550))
                    }.fill(Color(red: 181/255, green: 143/255, blue: 138/255))//right feet
                    
                    Path { (path) in
                        path.move(to: CGPoint(x:168,y:451))
                        path.addQuadCurve(to: CGPoint(x: 180, y: 470), control:CGPoint(x: 198, y: 460))
                        path.addQuadCurve(to: CGPoint(x: 157, y: 485), control:CGPoint(x: 195, y: 490))
                        path.addQuadCurve(to: CGPoint(x: 168, y: 451), control:CGPoint(x: 155, y: 460))
                        
                    }.fill(Color(red: 181/255, green: 143/255, blue: 138/255))//left hand
                    
                    Path { (path) in
                        path.move(to: CGPoint(x:170,y:520))
                        path.addQuadCurve(to: CGPoint(x: 180, y: 540), control:CGPoint(x: 200, y: 520))
                        path.addQuadCurve(to: CGPoint(x: 190, y: 560), control:CGPoint(x: 190, y: 550))
                        path.addQuadCurve(to: CGPoint(x: 170, y: 562), control:CGPoint(x: 180, y: 560))
                        path.addQuadCurve(to: CGPoint(x: 170, y: 520), control:CGPoint(x: 160, y: 550))
                        
                    }.fill(Color(red: 181/255, green: 143/255, blue: 138/255))//left feet
                    
                    
                }

                    
                Group{//brown line 2
                    
                    Path { (path) in
                        path.move(to: CGPoint(x:120,y:230))
                        path.addQuadCurve(to: CGPoint(x: 256, y: 230), control:CGPoint(x: 188, y: 185))
                        path.addQuadCurve(to: CGPoint(x: 290, y: 315), control:CGPoint(x: 280, y: 250))
                        path.addQuadCurve(to: CGPoint(x: 275, y: 385), control:CGPoint(x: 335, y: 368))
                        path.move(to: CGPoint(x:115,y:388))
                        path.addQuadCurve(to: CGPoint(x: 80, y: 318), control:CGPoint(x: 33, y: 390))
                        path.addQuadCurve(to: CGPoint(x: 120, y: 230), control:CGPoint(x: 85, y: 250))
                        path.addQuadCurve(to: CGPoint(x: 120, y: 230), control:CGPoint(x: 85, y: 250))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//head
                    
                    Path { (path) in
                        path.move(to: CGPoint(x:95,y:230))
                        path.addQuadCurve(to: CGPoint(x: 122, y: 250), control:CGPoint(x: 130, y: 200))
                        path.addQuadCurve(to: CGPoint(x: 85, y: 260), control:CGPoint(x: 120, y: 280))
                        path.addQuadCurve(to: CGPoint(x: 95, y: 230), control:CGPoint(x: 75, y: 250))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//left ear
                    
                    Path { (path) in
                        path.move(to: CGPoint(x:250,y:250))
                        path.addQuadCurve(to: CGPoint(x: 290, y: 250), control:CGPoint(x: 260, y: 200))//right ear top
                        path.addQuadCurve(to: CGPoint(x: 275, y: 273), control:CGPoint(x: 295, y: 270))//right ear bottom
                        path.addQuadCurve(to: CGPoint(x: 250, y: 250), control:CGPoint(x: 240, y: 280))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//ritht ear
                    
                    Path { (path) in
                        path.move(to: CGPoint(x:76,y:380))
                        path.addQuadCurve(to: CGPoint(x: 100, y: 420), control:CGPoint(x: 50, y: 420))//neck left
                        path.move(to: CGPoint(x:282,y:410))
                        path.addQuadCurve(to: CGPoint(x: 300, y: 375), control:CGPoint(x: 320, y: 400))//neck right
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//neck 2
                    
                    Path { (path) in
                        path.move(to: CGPoint(x:80,y:419))
                        path.addQuadCurve(to: CGPoint(x: 190, y: 560), control:CGPoint(x: 0, y: 590))
                        path.addQuadCurve(to: CGPoint(x: 340, y: 550), control:CGPoint(x: 250, y: 565))
                        path.addQuadCurve(to: CGPoint(x: 340, y: 505), control:CGPoint(x: 330, y: 530))
                        path.addQuadCurve(to: CGPoint(x: 320, y: 475), control:CGPoint(x: 328, y: 475))
                        path.addQuadCurve(to: CGPoint(x: 283, y: 410), control:CGPoint(x: 318, y: 450))
                                       
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//body
                                   
                }
                
                Group{//pink line
                    Path { (path) in
                        path.move(to: CGPoint(x:121,y:227))
                        path.addQuadCurve(to: CGPoint(x: 94, y: 263), control:CGPoint(x: 99, y: 250))
                    }.stroke(Color(red: 254/255, green: 229/255, blue: 224/255), lineWidth: 7)//left year line pink!!
                    Path { (path) in
                        path.move(to: CGPoint(x:256,y:230))
                        path.addQuadCurve(to: CGPoint(x: 280, y: 270), control:CGPoint(x: 275, y: 250))
                    }.stroke(Color(red: 254/255, green: 229/255, blue: 224/255), lineWidth: 7)//right year line pink!!
                }
                Group{//brown line 3
                    
                    Path { (path) in
                        path.move(to: CGPoint(x:23,y:505))
                        path.addQuadCurve(to: CGPoint(x: 30, y: 525), control:CGPoint(x: 18, y: 520))
                        path.addQuadCurve(to: CGPoint(x: 46, y: 513), control:CGPoint(x: 48, y: 530))
                        path.addQuadCurve(to: CGPoint(x: 30, y: 513), control:CGPoint(x: 35, y: 500))
                        path.addQuadCurve(to: CGPoint(x: 49, y: 530), control:CGPoint(x: 30, y: 530))
                        path.addQuadCurve(to: CGPoint(x: 60, y: 528), control:CGPoint(x: 55, y: 530))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), style: StrokeStyle(lineWidth: 4, lineCap: .round))//tail
                    
                    Path { (path) in
                        path.move(to: CGPoint(x:95,y:230))
                        path.addQuadCurve(to: CGPoint(x: 122, y: 250), control:CGPoint(x: 130, y: 200))
                        path.addQuadCurve(to: CGPoint(x: 85, y: 260), control:CGPoint(x: 120, y: 280))
                        path.addQuadCurve(to: CGPoint(x: 95, y: 230), control:CGPoint(x: 75, y: 250))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//left ear
                    
                    Path { (path) in
                    path.move(to: CGPoint(x:250,y:250))
                    path.addQuadCurve(to: CGPoint(x: 290, y: 250), control:CGPoint(x: 260, y: 200))//right ear top
                    path.addQuadCurve(to: CGPoint(x: 275, y: 273), control:CGPoint(x: 295, y: 270))//right ear bottom
                        path.addQuadCurve(to: CGPoint(x: 250, y: 250), control:CGPoint(x: 240, y: 280))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//ritht ear
                    
                    
                   
                    Path { (path) in
                        path.move(to: CGPoint(x:140,y:430))
                        path.addQuadCurve(to: CGPoint(x: 180, y: 455), control:CGPoint(x: 150, y: 445))
                        path.addQuadCurve(to: CGPoint(x: 180, y: 470), control:CGPoint(x: 195, y: 460))
                        path.addQuadCurve(to: CGPoint(x: 135, y: 485), control:CGPoint(x: 200, y: 490))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//left hand line
                    
                    Path { (path) in
                        path.move(to: CGPoint(x:190,y:560))
                        path.addQuadCurve(to: CGPoint(x: 180, y: 540), control:CGPoint(x: 190, y: 550))
                        path.addQuadCurve(to: CGPoint(x: 170, y: 520), control:CGPoint(x: 200, y: 520))
                        path.addQuadCurve(to: CGPoint(x: 150, y: 515), control:CGPoint(x: 160, y: 520))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//left feet line
                }
                Group{//brown color
                    Path { (path) in
                        path.move(to: CGPoint(x:340,y:550))
                        path.addQuadCurve(to: CGPoint(x: 340, y: 505), control:CGPoint(x: 330, y: 530))
                        path.addQuadCurve(to: CGPoint(x: 352, y: 512), control:CGPoint(x: 350, y: 506))
                        path.addQuadCurve(to: CGPoint(x: 347, y: 530), control:CGPoint(x: 350, y: 528))
                        path.addQuadCurve(to: CGPoint(x: 340, y: 550), control:CGPoint(x: 360, y: 550))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//right feet
                    
                    Path { (path) in
                        path.move(to: CGPoint(x:157,y:485))
                        path.addQuadCurve(to: CGPoint(x: 168, y: 451), control:CGPoint(x: 155, y: 460))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//left hand
                    
                    Path { (path) in
                        path.move(to: CGPoint(x:170,y:520))
                        path.addQuadCurve(to: CGPoint(x: 180, y: 540), control:CGPoint(x: 200, y: 520))
                        path.addQuadCurve(to: CGPoint(x: 190, y: 560), control:CGPoint(x: 190, y: 550))
                        path.addQuadCurve(to: CGPoint(x: 170, y: 562), control:CGPoint(x: 180, y: 560))
                        path.addQuadCurve(to: CGPoint(x: 170, y: 520), control:CGPoint(x: 160, y: 550))
                        
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//left feet
                    
                    
                }
                
                Group{//face
                    Path { (path) in
                        path.move(to: CGPoint(x:169,y:340))
                        path.addQuadCurve(to: CGPoint(x: 195, y:320), control:CGPoint(x: 170, y: 320))
                        path.addQuadCurve(to: CGPoint(x: 220, y:340), control:CGPoint(x: 221, y: 320))
                        path.addQuadCurve(to: CGPoint(x: 195, y:355), control:CGPoint(x: 221, y: 355))
                        path.addQuadCurve(to: CGPoint(x: 169, y:340), control:CGPoint(x: 169, y: 355))
                    }.fill(Color(red: 253/255, green: 192/255, blue: 189/255))//nose 1
                    
                    Path { (path) in
                        path.addArc(center: CGPoint(x: 148, y: 323), radius: 4.5, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
                    }.fill(Color(red: 70/255, green: 34/255, blue: 28/255))//left eye
                    
                    Path { (path) in
                        path.addArc(center: CGPoint(x: 237, y: 322), radius: 4.5, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
                    }.fill(Color(red: 70/255, green: 34/255, blue: 28/255))//right eye
                    
                    
                    BlushView(positionX:207, positionY:407)//left blush
                    
                    BlushView(positionX:344, positionY:405)//right blush
                    
                    
                    Path { (path) in
                        path.addArc(center: CGPoint(x: 125, y: 336), radius: 4, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
                    }.fill(Color.white)//left blush dot
                    
                    Path { (path) in
                        path.addArc(center: CGPoint(x: 263, y: 333), radius: 4, startAngle: .degrees(0), endAngle: .degrees(360), clockwise: false)
                    }.fill(Color.white)//right blush dot
                 
                }
                
                Group{//checken color
            
                    Path { (path) in
                        path.move(to: CGPoint(x:337,y:365))
                        path.addQuadCurve(to: CGPoint(x: 285, y: 325), control:CGPoint(x: 290, y: 365))//303 298 up 293 272
                        path.addQuadCurve(to: CGPoint(x: 293, y: 272), control:CGPoint(x: 280, y: 295))//!!!!
                        path.addQuadCurve(to: CGPoint(x: 350, y: 237), control:CGPoint(x: 318, y: 230))
                        path.addQuadCurve(to: CGPoint(x: 385, y: 272), control:CGPoint(x: 370, y: 240))
                        path.addQuadCurve(to: CGPoint(x: 355, y: 365), control:CGPoint(x: 420, y: 360))
                    }.fill(Color(red: 251/255, green: 191/255, blue: 131/255))//meet
                    
                    Path { (path) in
                        path.move(to: CGPoint(x:355,y:365))
                        path.addQuadCurve(to: CGPoint(x: 355, y: 380), control:CGPoint(x: 354, y: 380))
                        path.addQuadCurve(to: CGPoint(x: 368, y: 396), control:CGPoint(x: 370, y: 386))
                        path.addQuadCurve(to: CGPoint(x: 348, y: 395), control:CGPoint(x: 360, y: 410))
                        path.addQuadCurve(to: CGPoint(x: 335, y: 405), control:CGPoint(x: 345, y: 405))
                        path.addQuadCurve(to: CGPoint(x: 337, y: 380), control:CGPoint(x: 315, y: 398))
                        path.addQuadCurve(to: CGPoint(x: 337, y: 365), control:CGPoint(x: 337, y: 370))
                        path.addQuadCurve(to: CGPoint(x: 355, y: 365), control:CGPoint(x: 346, y: 358))
                    }.fill(Color.white)//guto
                        
                               
                }
                
                
                Group{//brown line 4
                    Path { (path) in
                        path.move(to: CGPoint(x:210,y:450))
                        path.addQuadCurve(to: CGPoint(x: 270, y: 450), control:CGPoint(x: 240, y: 435))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//dudu fat line
                    Path { (path) in
                        path.move(to: CGPoint(x:165,y:393))
                        path.addQuadCurve(to: CGPoint(x: 238, y: 390), control:CGPoint(x: 211, y: 400))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//neck fat line top
                    Path { (path) in
                        path.move(to: CGPoint(x:185,y:420))
                        path.addQuadCurve(to: CGPoint(x: 220, y: 420), control:CGPoint(x: 202, y: 425))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//neck fat line bottom
                    
                    Path { (path) in
                        path.move(to: CGPoint(x:169,y:340))
                        path.addQuadCurve(to: CGPoint(x: 195, y:320), control:CGPoint(x: 170, y: 320))
                        path.addQuadCurve(to: CGPoint(x: 220, y:340), control:CGPoint(x: 221, y: 320))
                        path.addQuadCurve(to: CGPoint(x: 195, y:355), control:CGPoint(x: 221, y: 355))
                        path.addQuadCurve(to: CGPoint(x: 169, y:340), control:CGPoint(x: 169, y: 355))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//nose 1
                    Path { (path) in
                        path.move(to: CGPoint(x:187,y:332))
                        path.addLine(to: CGPoint(x: 187, y:345))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//nose 2
                    Path { (path) in
                        path.move(to: CGPoint(x:203,y:332))
                        path.addLine(to: CGPoint(x: 203, y:345))
                    }.stroke(Color(red: 70/255, green: 34/255, blue: 28/255), lineWidth: 3)//nose 3
                    NavigationLink(destination: pig2View()) {
                        ChickenView2()
                    }
                }
               
            }.navigationBarTitle("")
            .navigationBarHidden(true)
            
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
struct AppleView_LibraryContent:
    LibraryContentProvider{
    @available(iOS 14.0, *)
    @available(iOS 14.0, *)
    static var views:[LibraryItem]{
        [LibraryItem(ContentView(),title:"可愛胖豬",category: .control)]
    }
}



