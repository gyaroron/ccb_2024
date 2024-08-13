import Foundation

class JsonParser {
    
    // JSON 파일 경로에서 제네릭 타입으로 데이터를 디코딩하는 메소드
    static func parse<T: Codable>(fileName: String) -> T? {
        // JSON 파일 경로를 가져오기
        guard let path = Bundle.main.path(forResource: fileName, ofType: "json") else {
            print("JSON 파일을 찾을 수 없습니다.")
            return nil
        }
        
        // JSON 파일에서 데이터 읽기
        do {
            let jsonData = try Data(contentsOf: URL(fileURLWithPath: path))
            let decoder = JSONDecoder()
            
            // JSON 데이터를 제네릭 타입으로 디코딩
            let decodedObject = try decoder.decode(T.self, from: jsonData)
            return decodedObject
            
        } catch {
            print("JSON 파싱 에러: \(error)")
            return nil
        }
    }
}
