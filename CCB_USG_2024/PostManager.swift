import Foundation

// PostManager는 싱글톤 패턴을 사용하여 애플리케이션 전역에서 하나의 인스턴스만 존재합니다.
final class PostManager {
    // PostManager의 유일한 인스턴스
    static let shared = PostManager()
    
    // 외부에서 직접 인스턴스를 생성할 수 없도록 private init() 사용
    private init() {}
}

extension PostManager {
    // "Post"라는 이름의 JSON 파일을 읽어서 Post 객체 배열로 변환합니다.
    func getPostMock() -> [Post] {
        // JSON 파일을 읽어들이고 파싱합니다.
        // 예외 처리를 위해서 `!` 연산자를 사용하고 있습니다.
        return JsonParser.parse(fileName: "MockPost")!
    }
}
