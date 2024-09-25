
import Foundation

struct MovieModel: Codable {
    let duration: Double
    let imageID: String?
    let plays: Int
    let createdAt: String
    let size: Int
    let transcodings: [Transcoding]
    let title: String
    let updatedAt: String
    let accountID: String
    let progress: Double
    let originalMovie: OriginalMovie
    let tags: [String]
    let id: String
    let aspectRatioMultiplier: Double
    let screenshot: Screenshot
    let state: String
    
    enum CodingKeys: String, CodingKey{
        case duration
        case imageID = "image_id"
        case plays
        case createdAt = "created_at"
        case size
        case transcodings
        case title
        case updatedAt = "updated_at"
        case accountID = "account_id"
        case progress
        case originalMovie = "original_movie"
        case tags
        case id
        case aspectRatioMultiplier = "aspect_ratio_multiplier"
        case screenshot
        case state
    }
}

struct OriginalMovie: Codable {
    let httpURI: String
    let size: Int
    
    enum CodingKeys: String, CodingKey{
        case httpURI = "http_uri"
        case size
    }
}


struct Screenshot: Codable {
    let normal, thumb, original: String
}

struct Transcoding: Codable {
    let id:String
    let rtmpStreamURI: String
    let size: Int
    let httpURI: String
    let title: String
    let progress: Double
    let rtmpBaseURI: String
    let bitrate: Int
    let height: Int
    let rtmpURI:String
    let state: String
    let width: Int
    
    enum CodingKeys: String, CodingKey{
        case id
        case rtmpStreamURI = "rtmp_stream_uri"
        case size
        case httpURI = "http_uri"
        case title
        case progress
        case rtmpBaseURI = "rtmp_base_uri"
        case bitrate
        case height
        case rtmpURI = "rtmp_uri"
        case state
        case width
    }
}
