//
//  TWidget.swift
//  TWidget
//
//  Created by Amber Jen on 2021/7/22.
//

import WidgetKit
import SwiftUI
import Intents

struct Provider: IntentTimelineProvider {
    func placeholder(in context: Context) -> SimpleEntry {
        SimpleEntry(date: Date(), configuration: ConfigurationIntent())
    }

    func getSnapshot(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (SimpleEntry) -> ()) {
        let entry = SimpleEntry(date: Date(), configuration: configuration)
        completion(entry)
    }

    func getTimeline(for configuration: ConfigurationIntent, in context: Context, completion: @escaping (Timeline<Entry>) -> ()) {
        var entries: [SimpleEntry] = []

        // Generate a timeline consisting of five entries an hour apart, starting from the current date.
        let currentDate = Date()
        for hourOffset in 0 ..< 5 {
            let entryDate = Calendar.current.date(byAdding: .hour, value: hourOffset, to: currentDate)!
            let entry = SimpleEntry(date: entryDate, configuration: configuration)
            entries.append(entry)
        }

        let timeline = Timeline(entries: entries, policy: .atEnd)
        completion(timeline)
    }
}

struct SimpleEntry: TimelineEntry {
    let date: Date
    let configuration: ConfigurationIntent
}

struct TWidgetEntryView : View {
    var entry: Provider.Entry
    
    @Environment(\.widgetFamily) var widgetFamily

    var body: some View {
        
        
        GeometryReader { geometry in
            ZStack {

                Color.black
                    .overlay(
                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8257448077, green: 0.2478122711, blue: 0.05235583335, alpha: 1)), Color(#colorLiteral(red: 0.9292702079, green: 0.3809477687, blue: 0.1055054143, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                    )
                
                if widgetFamily == .systemLarge {
                    Image("bg")
                        .resizable()
                        .scaledToFill()
                }
                     
                HStack {
                    VStack(alignment: .leading) {
                             
                        if widgetFamily == .systemSmall {
                            Text("Fri, 23 Jul")
                                .font(.system(size: 14,weight: .semibold))
                        }
                        
                            
                        HStack(alignment: .top) {
                                
                            if widgetFamily == .systemSmall {
                            
                                VStack(spacing: 3) {
                                    Circle()
                                        .strokeBorder(Color.white.opacity(0.6), lineWidth: 2)
                                        .frame(width: 7, height: 7)
                                        
                                    
                                    VLine().stroke(style: StrokeStyle(lineWidth: 1, dash: [3]))
                                        .foregroundColor(.white.opacity(0.8))
                                        .frame(width: 1)
                                    
                                    Circle()
                                        .strokeBorder(Color.white.opacity(0.6), lineWidth: 2)
                                        .frame(width: 7, height: 7)
                                }
                                .frame(height: 74)
                                .offset(y: 4)
                            
                            //}
                            
                                VStack(alignment: .leading, spacing: 6) {
                                
                                    // Departure
                                    VStack(alignment: .leading) {
                                        Text("16:40")
                                            .font(.system(size: 22, weight: .semibold ))
                                            .frame(height: 22)

                                        Text("Nangang")
                                            .font(.system(size: 14,weight: .medium))
                                            .foregroundColor(.white.opacity(0.8))
                                    }
                                    
                                    // Duration
                                    HStack(alignment: .center, spacing: 4) {
                                        Text("0 hr 58 min")
                                            .font(.system(size: 12, weight: .semibold ))
                                        
                                        
                                        Image("icon-rail")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 14, height: 14)
                                    }
                                    
                                    // Arrival
                                    VStack(alignment: .leading) {
                                        Text("17:38")
                                            .font(.system(size: 20,weight: .semibold))
                                            .frame(height: 22)
                                        Text("Taichung")
                                            .font(.system(size: 14,weight: .medium))
                                            .foregroundColor(.white.opacity(0.8))
                                    }
                                
                                }
                                
                                Spacer()
                            
                            } //: systemSmall
                            
                                
                            if widgetFamily == .systemMedium {
                                
                                VStack(alignment: .leading) {
                                    Text("Fri, 23 Jul")
                                        .font(.system(size: 14,weight: .semibold))
                                    HStack(alignment: .center) {
                                        
                                        // Departure
                                        VStack(alignment: .leading) {
                                            Text("Nangang")
                                                .font(.system(size: 14, weight: .medium))
                                                .foregroundColor(.white.opacity(0.8))
                                            
                                            Text("16:40")
                                                .font(.system(size: 30, weight: .semibold))
                                        }
                                        
                                        Spacer()
                                        
                                        // Arrow
                                        Image("icon-double-arrow")
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 40, height: 40)
                                        
                                        Spacer()
                                        
                                        // Arrival
                                        VStack(alignment: .leading) {
                                            Text("Taichung")
                                                .font(.system(size: 14, weight: .medium))
                                                .foregroundColor(.white.opacity(0.8))
                                            
                                            Text("17:38")
                                                .font(.system(size: 30, weight: .semibold))
                                        }
                                        
                                    }
                                    .padding(.top, 2)
                                    
                                    Spacer()
                                    
                                    HStack(spacing: 16) {
                                        
                                        HStack(alignment: .center, spacing: 4) {
                                            Image("icon-rail")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 14, height: 14)
                                            Text("1237")
                                                .font(.system(size: 13, weight: .semibold))
                                        }
                                        
                                        HStack(alignment: .center, spacing: 4) {
                                            Image("icon-seat")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 14, height: 14)
                                            Text("6-7E")
                                                .font(.system(size: 13, weight: .semibold))
                                        }
                                        
                                        Spacer()
                                        
                                    }
                                }
                                .padding(16)
                                
                            }//: systemMedium
                            
                            
                            if widgetFamily == .systemLarge {
                                VStack {
                                    VStack(alignment: .leading) {
                                        
                                        Text("Fri, 23 Jul")
                                            .font(.system(size: 14,weight: .semibold))
                                        
                                        HStack(alignment: .center) {
                                            
                                            // Departure
                                            VStack(alignment: .leading) {
                                                Text("Nangang")
                                                    .font(.system(size: 14, weight: .medium))
                                                    .foregroundColor(.white.opacity(0.8))
                                                
                                                Text("16:40")
                                                    .font(.system(size: 30, weight: .semibold))
                                            }
                                            
                                            Spacer()
                                            
                                            // Arrow
                                            Image("icon-arrow")
                                                .resizable()
                                                .scaledToFit()
                                                .frame(width: 40, height: 40)
                                            
                                            Spacer()
                                            
                                            // Arrival
                                            VStack(alignment: .leading) {
                                                Text("Taichung")
                                                    .font(.system(size: 14, weight: .medium))
                                                    .foregroundColor(.white.opacity(0.8))
                                                
                                                Text("17:38")
                                                    .font(.system(size: 30, weight: .semibold))
                                            }
                                            
                                        }
                                        .padding(.top, 2)
                                        
                                        Spacer()
                                        
                                        HStack {
                                            HStack(spacing: 16) {
                                                
                                                HStack(alignment: .center, spacing: 4) {
                                                    Image("icon-rail")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 14, height: 14)
                                                    Text("1237")
                                                        .font(.system(size: 13, weight: .semibold))
                                                }
                                                
                                                HStack(alignment: .center, spacing: 4) {
                                                    Image("icon-seat")
                                                        .resizable()
                                                        .scaledToFit()
                                                        .frame(width: 14, height: 14)
                                                    Text("6-7E")
                                                        .font(.system(size: 13, weight: .semibold))
                                                }
                                                
                                            }
                                            
                                            Spacer()
                                            
                                            HStack(alignment: .center, spacing: 4) {
                                                Image("icon-time")
                                                    .resizable()
                                                    .scaledToFit()
                                                    .frame(width: 14, height: 14)
                                                Text("0 hr 58 min")
                                                    .font(.system(size: 13, weight: .semibold))
                                            }
                                            
                                            
                                        }
                                        
                                        
                                    }
                                    .padding(16)
                                    .frame(height: 162)
                                    .background(
                                        LinearGradient(gradient: Gradient(colors: [Color(#colorLiteral(red: 0.8257448077, green: 0.2478122711, blue: 0.05235583335, alpha: 1)), Color(#colorLiteral(red: 0.9292702079, green: 0.3809477687, blue: 0.1055054143, alpha: 1))]), startPoint: .topLeading, endPoint: .bottomTrailing)
                                    )
                                    
                                    Spacer()
                                }
                                
                                
                            }//: systemLarge
                        
                            
                        }//: HStack
                        
                             
                     }
                     .foregroundColor(.white)
                    .padding(widgetFamily == .systemSmall ? 12 : 0)
                    
                }
                     
                
                    // Logo
                    Image("logo-2")
                        .resizable()
                        .scaledToFit()
                        .frame(width: widgetFamily == .systemSmall ? 40 : 50, height: widgetFamily == .systemSmall ? 21 : 26)
                        .offset(
                            x: (geometry.size.width / 2) - (widgetFamily == .systemSmall ? 30 : 36),
                            y: (geometry.size.height / 2) - (widgetFamily == .systemSmall ? 22 : 26)
                        
                        )
                     
                
                
            }//: ZStack
            
            
            
        }//: GeometryReader
    }
}

// MARK: METHOD

/* Reference:
 https://stackoverflow.com/questions/58526632/swiftui-create-a-single-dashed-line-with-swiftui
*/
struct VLine: Shape {
    func path(in rect: CGRect) -> Path {
        Path { path in
            path.move(to: CGPoint(x: rect.midX, y: rect.minY))
            path.addLine(to: CGPoint(x: rect.midX, y: rect.maxY))
        }
    }
}


@main
struct TWidget: Widget {
    let kind: String = "TWidget"

    var body: some WidgetConfiguration {
        IntentConfiguration(kind: kind, intent: ConfigurationIntent.self, provider: Provider()) { entry in
            TWidgetEntryView(entry: entry)
        }
        .configurationDisplayName("T-EX Widget")
        .description("Keep your trip on track with depratures time and ticket info.")
    }
}

struct TWidget_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            
            TWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
                .previewContext(WidgetPreviewContext(family: .systemSmall))
            
            TWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
                .previewContext(WidgetPreviewContext(family: .systemMedium))
            
            TWidgetEntryView(entry: SimpleEntry(date: Date(), configuration: ConfigurationIntent()))
                .previewContext(WidgetPreviewContext(family: .systemLarge))
        }
    }
}
