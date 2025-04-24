# gRPC-Microservices

---

golang x gRPC 

GO 해외 커뮤니티에서 가장 많은 투표. 찍먹 ㄱㄱ

실제 MVP빠르게 구축해보면서 서비스 통신 Outline그리기

간단하게 FE구현까지 마쳐두고 이걸 배포쪽이나 다른 프로젝트 및 스터디에 활용가능할듯.




ref video : https://www.youtube.com/watch?v=ea_4Ug5WWYE


[데보션 블로그 : gRPC란? 그리고 golang에서 사용하기]
ref blog : https://devocean.sk.com/blog/techBoardDetail.do?ID=165058


---

why gRPC?

- greater performance
- sending json by HTTP is expensive..
- *gRPC use Protocol Buffers as it's default seriliazation mechanism.*


---


```mermaid
flowchart TD
    UserRequest[USER REQUEST] -->|http| Kitchen
    Kitchen -->|gRPC| Orders
    Orders -->|gRPC| Kitchen
    Orders --> Common

    Orders[Orders]
    Kitchen[Kitchen]
    Common[Common]

    NoteGRPC --- Kitchen
