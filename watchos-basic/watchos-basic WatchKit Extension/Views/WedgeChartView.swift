import SwiftUI

struct WedgeShape: Shape {
    var startAngle: Angle
    var endAngle: Angle

    func path(in rect: CGRect) -> Path {
        var p = Path()
        
        let center = CGPoint(x: rect.size.width / 2, y: rect.size.width / 2)
        let r1 = rect.size.width / 2

        p.addArc(
            center: center,
            radius: r1,
            startAngle: startAngle,
            endAngle: endAngle,
            clockwise: false
        )

        return p
    }
}

struct Wedge {
    var startAngle: Double
    var endAngle: Double
    var color: Color
}

struct WedgeChartView: View {
    var wedges = [
        Wedge(startAngle: -43, endAngle: 43, color: Color(#colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))),
        Wedge(startAngle: 43, endAngle: 150, color: Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))),
        Wedge(startAngle: 150, endAngle: -43, color: Color(#colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)))
    ]

    var body: some View {
        
        VStack {
            HeaderView(title: "wedge", subtitle: "chart", color: .white)
            
            ZStack {
                ForEach(0 ..< wedges.count) {
                    WedgeShape(
                        startAngle: Angle(degrees: self.wedges[$0].startAngle),
                        endAngle: Angle(degrees: self.wedges[$0].endAngle)
                    )
                    .stroke(self.wedges[$0].color, lineWidth: 20)
                }
            }
            .frame(width: 125, height: 125)
            .padding(.top, 15)
        }
        
    }
}

struct WedgeChartView_Previews: PreviewProvider {
    static var previews: some View {
        WedgeChartView()
    }
}
