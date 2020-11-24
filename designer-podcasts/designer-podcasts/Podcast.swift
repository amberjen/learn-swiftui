//
//  Podcast.swift
//  designer-podcasts
//
//  Created by Amber Jen on 2020/11/23.
//

import Foundation

struct Podcast: Hashable, Identifiable {
    
    let id = UUID()
    
    let name: String
    let coverImg: String
    let artist: String
    let category: String
    let description: String
    let url: String
    
}

struct MockData {
    
    static let samplePodcast = Podcast(name: "Overtime",
                                       coverImg: "overtime",
                                       artist: "Dribbble",
                                       category: "Design",
                                       description: "Overtime, Dribbble's weekly podcast, explores the most interesting design news and gives you the tips you need to create your best work. No need to scroll copious news sites and design Twitter—host Meg Lewis and friends are primed to inform, entertain, and inspire you each week. Consider Overtime your audio lifeline to the design community, packaged in a perfectly punchy Shot. Subscribe and listen every Wednesday to stay ahead of the game.",
                                       url: "https://podcasts.apple.com/us/podcast/overtime/id1068288639")
    
    
    static let podcasts = [
        Podcast(name: "Design Better Podcast",
                coverImg: "design-better",
                artist: "InVisionApp, Inc",
                category: "Design",
                description: "The Design Better podcast delivers insights from the world’s most renowned design leaders, empowering teams to transform their practice and build remarkable products. This series is hosted by Aarron Walter and Eli Woolery and brought to you by InVision, the digital product design platform used to make the world’s best customer experiences.",
                url: "https://podcasts.apple.com/us/podcast/design-better-podcast/id1266839739"),
        Podcast(name: "Overtime",
                coverImg: "overtime",
                artist: "Dribbble",
                category: "Design",
                description: "Overtime, Dribbble's weekly podcast, explores the most interesting design news and gives you the tips you need to create your best work. No need to scroll copious news sites and design Twitter—host Meg Lewis and friends are primed to inform, entertain, and inspire you each week. Consider Overtime your audio lifeline to the design community, packaged in a perfectly punchy Shot. Subscribe and listen every Wednesday to stay ahead of the game.",
                url: "https://podcasts.apple.com/us/podcast/overtime/id1068288639"),
        Podcast(name: "School of Motion Podcast",
                coverImg: "som",
                artist: "School of Motion: Design & Animation Training for MoGraph Artists",
                category: "Design",
                description: "A show for MoGraph artists by MoGraph artists. We interview Designers, Animators, Producers, and other folks related to our industry. We get deep into the geeky world of Adobe After Effects, Cinema 4D, Photoshop and Illustrator. We talk about the business and art of Motion Design. Dig in.",
                url: "https://podcasts.apple.com/us/podcast/school-of-motion-podcast/id1211312212"),
        Podcast(name: "High Resolution",
                coverImg: "high-resolution",
                artist: "Bobby Ghoshal, Jared Erondu",
                category: "Design",
                description: "Bringing clarity to how the best companies approach, communicate, and deploy design. We’ve hand-picked the design industry’s 25 greatest influencers and change-makers to bring you 1000min of deep-dive conversation. Hosted by Bobby Ghoshal and Jared Erondu.",
                url: "https://podcasts.apple.com/us/podcast/high-resolution/id1204941994"),
        Podcast(name: "UI Breakfast: UI/UX Design and Product Strategy",
                coverImg: "ui-breakfast",
                artist: "Jane Portman",
                category: "Design",
                description: "Join us for exciting conversations about UI/UX design, SaaS products, marketing, and so much more. My awesome guests are industry experts who share actionable knowledge — so that you can apply it in your business today.",
                url: "https://podcasts.apple.com/us/podcast/ui-breakfast-ui-ux-design-and-product-strategy/id939175693"),
        Podcast(name: "User Defenders: Podcast – UX Design and Personal Growth",
                coverImg: "user-defenders",
                artist: "Jason Ogle",
                category: "Design",
                description: "Being a great UX designer begins and ends with being a great human.\n\nEver since I can remember, I’ve been fascinated by superheroes. Early on, it was their amazing superpowers that drew me in. As I grew older, it was the realization of a very tangible connection between us and them.\n\nSuperheroes typically possess a strong moral code, including a willingness to risk one’s own safety in the service of good without expectation of reward. Even though they still fall and fail often, they always get back up, learn, and continue to make things better.",
                url: "https://podcasts.apple.com/us/podcast/user-defenders-podcast-ux-design-and-personal-growth/id1055121160"),
        Podcast(name: "New Layer",
                coverImg: "new-layer",
                artist: "Shape",
                category: "Design",
                description: "A conversation on everything related to digital product design, with hosts Tanner Christensen and Jasmine Friedl. Discussing design careers, tools, education, critique, and much more. New episodes on Wednesdays!",
                url: "https://podcasts.apple.com/us/podcast/new-layer/id1472647601"),
        Podcast(name: "Writers of Silicon Valley",
                coverImg: "writers",
                artist: "Patrick Stafford",
                category: "Design",
                description: "The future is words. More businesses are investing in high quality UX writers and content strategists. Apple, Uber, Shopify, Spotify, Amazon...the list goes on. 'UX Writer' is now one of the hottest jobs in tech - and around the world, too. Why? They realise writers embedded in design crews are the great differentiator. This podcast is all about those writers - who they are, where they come from, what they do...and why the work they do is so important. You've heard all about the stories of building computers in garages. Now it's time for the writers to stand up - and take their place.",
                url: "https://podcasts.apple.com/us/podcast/writers-of-silicon-valley/id1455767269"),
        Podcast(name: "Creative Confidence Podcast",
                coverImg: "creative-confidence",
                artist: "IDEO U",
                category: "Business",
                description: "The IDEO U Creative Confidence Podcast hosts candid conversations with some of today’s most inspiring change makers, design thinkers, and creative minds. IDEO Partners and IDEO U leaders Suzanne Gibbs Howard and Coe Leta Stafford speak with guests about their approach to leadership, creativity, innovation, and growth. Get insight into their success through personal stories and real-world examples, and learn how to bring a human-centered approach to your own work.\n\nDiscover more at IDEOU.com.",
                url: "https://podcasts.apple.com/us/podcast/creative-confidence-podcast/id1231685425"),
        Podcast(name: "99% Invisible",
                coverImg: "99-invisible",
                artist: "Radiotopia",
                category: "Design",
                description: "Design is everywhere in our lives, perhaps most importantly in the places where we've just stopped noticing. 99% Invisible is a weekly exploration of the process and power of design and architecture. From award winning producer Roman Mars.",
                url: "https://podcasts.apple.com/us/podcast/99-invisible/id394775318"),
        Podcast(name: "Presentable",
                coverImg: "presentable",
                artist: "Relay FM",
                category: "Design",
                description: "The Presentable Podcast focuses on how we design and build the products that are shaping our digital future. We'll track the tools, trends, and methods being used by teams from the biggest companies and latest startups. \n\nIn each episode, Jeff will bring over two decades of experience as a designer, developer, entrepreneur, and investor as he chats with guests about how design is changing the world. Hosted by Jeff Veen.",
                url: "https://podcasts.apple.com/us/podcast/presentable/id1117489326")
//        Podcast(name: "",
//                coverImg: "",
//                artist: "",
//                category: "Design",
//                description: "",
//                url: ""),
//        Podcast(name: "",
//                coverImg: "",
//                artist: "",
//                category: "Design",
//                description: "",
//                url: "")
    ]
}
