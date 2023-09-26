//
//  MockData.swift
//  EvrbitCodingTaskTests
//
//  Created by Aleksandar Dimov on 25.9.23.
//

import Foundation

struct MockData {
    static let images = """
        [
        {
                "id": "_tDdlCJIwOA",
                "urls": {
                    "raw": "https://images.unsplash.com/photo-1682687981907-170c006e3744?ixid=M3w1MDY1MzV8MXwxfGFsbHwxfHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3",
                    "full": "https://images.unsplash.com/photo-1682687981907-170c006e3744?crop=entropy&cs=srgb&fm=jpg&ixid=M3w1MDY1MzV8MXwxfGFsbHwxfHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=85",
                    "regular": "https://images.unsplash.com/photo-1682687981907-170c006e3744?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MXwxfGFsbHwxfHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=1080",
                    "small": "https://images.unsplash.com/photo-1682687981907-170c006e3744?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MXwxfGFsbHwxfHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=400",
                    "thumb": "https://images.unsplash.com/photo-1682687981907-170c006e3744?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MXwxfGFsbHwxfHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=200",
                    "small_s3": "https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1682687981907-170c006e3744"
                }
            },
            {
                "id": "1Cm90IhcE5k",
                "urls": {
                    "raw": "https://images.unsplash.com/photo-1663386770072-9dcafe528a49?ixid=M3w1MDY1MzV8MHwxfGFsbHwyfHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3",
                    "full": "https://images.unsplash.com/photo-1663386770072-9dcafe528a49?crop=entropy&cs=srgb&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHwyfHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=85",
                    "regular": "https://images.unsplash.com/photo-1663386770072-9dcafe528a49?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHwyfHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=1080",
                    "small": "https://images.unsplash.com/photo-1663386770072-9dcafe528a49?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHwyfHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=400",
                    "thumb": "https://images.unsplash.com/photo-1663386770072-9dcafe528a49?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHwyfHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=200",
                    "small_s3": "https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1663386770072-9dcafe528a49"
                }
            },
            {
                "id": "FpEX51pF-MM",
                "urls": {
                    "raw": "https://images.unsplash.com/photo-1695161880050-324c5a86c0fe?ixid=M3w1MDY1MzV8MHwxfGFsbHwzfHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3",
                    "full": "https://images.unsplash.com/photo-1695161880050-324c5a86c0fe?crop=entropy&cs=srgb&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHwzfHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=85",
                    "regular": "https://images.unsplash.com/photo-1695161880050-324c5a86c0fe?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHwzfHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=1080",
                    "small": "https://images.unsplash.com/photo-1695161880050-324c5a86c0fe?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHwzfHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=400",
                    "thumb": "https://images.unsplash.com/photo-1695161880050-324c5a86c0fe?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHwzfHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=200",
                    "small_s3": "https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1695161880050-324c5a86c0fe"
                }
            }
        ]
        """
    
    static let imagesFromPage2 = """
        [
        {
                "id": "seX13AzLqls",
                "urls": {
                    "raw": "https://images.unsplash.com/photo-1682688759157-57988e10ffa8?ixid=M3w1MDY1MzV8MXwxfGFsbHw2fHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3",
                    "full": "https://images.unsplash.com/photo-1682688759157-57988e10ffa8?crop=entropy&cs=srgb&fm=jpg&ixid=M3w1MDY1MzV8MXwxfGFsbHw2fHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=85",
                    "regular": "https://images.unsplash.com/photo-1682688759157-57988e10ffa8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MXwxfGFsbHw2fHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=1080",
                    "small": "https://images.unsplash.com/photo-1682688759157-57988e10ffa8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MXwxfGFsbHw2fHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=400",
                    "thumb": "https://images.unsplash.com/photo-1682688759157-57988e10ffa8?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MXwxfGFsbHw2fHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=200",
                    "small_s3": "https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1682688759157-57988e10ffa8"
                }
            },
            {
                "id": "3zN4hy-IwVo",
                "urls": {
                    "raw": "https://images.unsplash.com/photo-1695459003559-a84af05f043e?ixid=M3w1MDY1MzV8MHwxfGFsbHw3fHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3",
                    "full": "https://images.unsplash.com/photo-1695459003559-a84af05f043e?crop=entropy&cs=srgb&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHw3fHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=85",
                    "regular": "https://images.unsplash.com/photo-1695459003559-a84af05f043e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHw3fHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=1080",
                    "small": "https://images.unsplash.com/photo-1695459003559-a84af05f043e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHw3fHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=400",
                    "thumb": "https://images.unsplash.com/photo-1695459003559-a84af05f043e?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHw3fHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=200",
                    "small_s3": "https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1695459003559-a84af05f043e"
                }
            },
            {
                "id": "CeaMEiJ4xgI",
                "urls": {
                    "raw": "https://images.unsplash.com/photo-1695527602872-fac5b451c897?ixid=M3w1MDY1MzV8MHwxfGFsbHw4fHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3",
                    "full": "https://images.unsplash.com/photo-1695527602872-fac5b451c897?crop=entropy&cs=srgb&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHw4fHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=85",
                    "regular": "https://images.unsplash.com/photo-1695527602872-fac5b451c897?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHw4fHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=1080",
                    "small": "https://images.unsplash.com/photo-1695527602872-fac5b451c897?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHw4fHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=400",
                    "thumb": "https://images.unsplash.com/photo-1695527602872-fac5b451c897?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w1MDY1MzV8MHwxfGFsbHw4fHx8fHx8Mnx8MTY5NTU5NTIyM3w&ixlib=rb-4.0.3&q=80&w=200",
                    "small_s3": "https://s3.us-west-2.amazonaws.com/images.unsplash.com/small/photo-1695527602872-fac5b451c897"
                }
            }
        ]
        """
}
