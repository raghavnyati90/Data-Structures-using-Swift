//: Playground - noun: a place where people can play

import UIKit

//Below logic is used to looop the playlists like in Spotify app

let tracks = ["a", "b", "c", "d", "e"]

let selectedTrack = "d"
var playlist = [String]()
var priorList = [String]()

for track in tracks{
    if(selectedTrack == track || playlist.count > 0){
        playlist.append(track)
    }else{
        priorList.append(track)
    }
}

playlist
priorList

let index = tracks.index(of: selectedTrack)
let index1 = tracks.index(where: {return $0 == selectedTrack})
index1

let prefixArray = tracks.prefix(upTo: index!)
let suffixArray = tracks.suffix(from: index!)
let arr = prefixArray + suffixArray
arr
