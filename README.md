# 우리집 가계부 배포

1. Supabase SQL Editor에서 `supabase/schema.sql` 실행
2. Supabase Authentication > Providers > Email 활성화, Confirm email 끄기
3. Cloudflare Pages에서 이 폴더를 GitHub 저장소와 연결
4. Framework preset: None, Build command: 비움, Build output directory: `/`
5. `index.html`에는 Supabase URL과 Publishable key가 이미 설정되어 있음

서비스 역할 키(Secret/service_role)는 프론트엔드에 절대 넣지 않습니다.
기존 데이터는 이전하지 않습니다.
