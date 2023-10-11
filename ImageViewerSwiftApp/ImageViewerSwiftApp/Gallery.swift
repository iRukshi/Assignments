//
//  Gallery.swift
//  ImageViewerSwiftApp
//
//  Created by Rukshi Chauhan on 10/10/23.
//

import Foundation
struct Gallery {
    
    lazy var imageDic:[Planet: String] = [Planet.Mercury: "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1240w,f_auto,q_auto:best/msnbc/Components/Photo_StoryLevel/080114/080114-mercury-hmed-10a.jpg",
                                           Planet.Venus: "https://nssdc.gsfc.nasa.gov/planetary/image/venus.jpg",
                                           Planet.Earth: "https://cdn.britannica.com/25/160325-050-EB1C8FB7/image-instruments-Earth-satellite-NASA-Suomi-National-2012.jpg",
                                           Planet.Mars:"https://starwalk.space/gallery/images/mars-the-ultimate-guide/1920x1080.jpg",
                                           Planet.Jupiter:"https://news.ucr.edu/sites/default/files/2022-07/jupiter_rings_bright.jpg",
                                           Planet.Saturn:"https://nssdc.gsfc.nasa.gov/planetary/image/saturn.jpg",
                                           Planet.Uranus:"https://ychef.files.bbci.co.uk/1280x720/p0257vk5.jpg",
                                           Planet.Neptune:"https://cdn.mos.cms.futurecdn.net/PezBzd9Fehsq9XWgWMauVV-1920-80.jpg"]
}

enum Planet: CaseIterable {
    case Mercury , Venus , Earth, Mars, Jupiter, Saturn, Uranus, Neptune
    
    /*
     var urlString: String{
        switch self {
        case .Mercury:
            return "https://media-cldnry.s-nbcnews.com/image/upload/t_fit-1240w,f_auto,q_auto:best/msnbc/Components/Photo_StoryLevel/080114/080114-mercury-hmed-10a.jpg"
        case .Venus:
            return "https://nssdc.gsfc.nasa.gov/planetary/image/venus.jpg"
        case .Earth:
            return"https://cdn.britannica.com/25/160325-050-EB1C8FB7/image-instruments-Earth-satellite-NASA-Suomi-National-2012.jpg"
        case .Mars:
            return"https://starwalk.space/gallery/images/mars-the-ultimate-guide/1920x1080.jpg"
        case .Jupiter:
            return"https://news.ucr.edu/sites/default/files/2022-07/jupiter_rings_bright.jpg"
        case .Saturn:
            return"https://nssdc.gsfc.nasa.gov/planetary/image/saturn.jpg"
        case .Uranus:
            return"https://ychef.files.bbci.co.uk/1280x720/p0257vk5.jpg"
        case .Neptune:
            return"https://cdn.mos.cms.futurecdn.net/PezBzd9Fehsq9XWgWMauVV-1920-80.jpg"
        }
    }
     */
}
