-- 기존 테이블 삭제
DROP TABLE IF EXISTS animal_member;

-- 데이터베이스와 테이블의 문자열 인코딩 변경 및 새 테이블 생성
CREATE DATABASE IF NOT EXISTS AnimalData CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
USE AnimalData;

CREATE TABLE IF NOT EXISTS animal_member(
    name VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    personality VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
);
-- 
CREATE TABLE IF NOT EXISTS animal_member(
    name VARCHAR(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    personality VARCHAR(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
    img varchar(500)
    PRIMARY KEY (id)
);



-- 데이터 삽입
INSERT INTO animal_member (name, personality) VALUES
('dog', '개는 마치 항상 당신의 최고의 친구처럼 행동합니다. 그들은 충성심이 깊고, 언제나 당신을 지지해주는 든든한 존재입니다. 개는 사랑과 관심을 주고받는 것을 좋아하며, 종종 장난기 넘치고 활동적인 친구처럼 느껴질 수 있습니다.'),
('dolphin', '돌고래는 마치 반짝이는 지성과 유머 감각을 가진 사람처럼 느껴질 수 있습니다. 그들은 높은 사회성과 호기심을 가지고 있으며, 늘 새로운 것을 배우고 탐험하는 것을 좋아합니다. 돌고래는 친구들과 함께 놀기를 좋아하고, 협력적인 성격을 지니고 있습니다.'),
('duck', '오리는 평온하고 침착한 친구와 같습니다. 그들은 대체로 조용하고, 균형 잡힌 삶을 선호하는 경향이 있습니다. 오리는 사회적인 존재로, 다른 사람들과 어울리기를 좋아하며, 때때로 공동체 생활에서 중요한 역할을 합니다.'),
('elephant', '코끼리는 마치 지혜로운 조언자 같습니다. 그들은 인내심이 강하고, 깊은 감정을 가진 존재로, 가족과 공동체에 대한 강한 의리를 지니고 있습니다. 코끼리는 또한 그들의 경험과 지식을 바탕으로 다른 이들을 돕는 것을 좋아합니다.'),
('fox', '여우는 영리하고 기민한 사람을 연상시킵니다. 그들은 빠른 사고력과 적응력을 가지고 있으며, 때때로 조금 교활하게 행동할 수도 있습니다. 여우는 독립적인 성향을 가지고 있지만, 필요할 때는 치밀하고 계산적인 면모를 보입니다.'),
('goldfish', '금붕어는 평온하고 고요한 존재처럼 느껴집니다. 그들은 자신의 작은 세계에 만족하며, 복잡한 문제보다는 단순하고 평화로운 삶을 추구하는 경향이 있습니다.'),
('horse', '말은 강인하고 자유로운 정신을 지닌 사람과 같습니다. 그들은 자신감 있고, 때로는 독립적인 성격을 보이며, 열정적으로 자신의 길을 걷는 것을 선호합니다.'),
('lion', '사자는 리더십과 권위 있는 성격을 지닌 사람을 연상시킵니다. 그들은 자신감이 넘치고, 보호적인 성격을 가지며, 자신의 영역과 가족을 지키는 데 강한 의지를 보입니다.'),
('mouse', '쥐는 조심스럽고, 민감한 사람을 닮았습니다. 그들은 주변 환경에 대해 매우 주의 깊으며, 때때로 조금 겁이 많은 편이지만, 빠르게 상황에 적응하고 해결책을 찾습니다.'),
('ox', '소는 근면하고 신뢰할 수 있는 사람처럼 느껴집니다. 그들은 인내심이 많고, 맡은 일을 꾸준히 해내며, 때로는 고집스러운 면이 있습니다.'),
('pig','돼지는 호기심이 많고 지능적인 성격을 지닌 사람과 유사합니다. 그들은 새로운 것을 배우는 것을 좋아하며, 사회적인 상호작용을 중시합니다.'),
('sheep','양은 온화하고 순응적인 사람과 같습니다. 그들은 집단 내에서 안정과 조화를 추구하며, 갈등을 피하고 평화로운 상태를 유지하는 것을 선호합니다.'),
('snake', '뱀은 신비롭고 예측 불가능한 성격을 지닌 사람을 연상시킵니다. 그들은 자신의 목표를 위해 조용히 움직이며, 때로는 예상치 못한 방법으로 문제를 해결합니다.'),
('swan', '백조는 우아하고 자존감이 높은 사람과 같습니다. 그들은 자신의 아름다움과 품위를 유지하는 것을 중요하게 여기며, 조용하고 고상한 분위기를 가지고 있습니다.'),
('wolf', '늑대는 강하고 독립적인 리더와 같습니다. 그들은 높은 사회성을 가지고 있으며, 가족과 무리에 대한 강한 의리와 보호 본능을 가지고 있습니다.'),
('zebra', '얼룩말은 독특하고 개성적인 사람을 연상시킵니다. 그들은 자신만의 스타일을 가지고 있으며, 집단 내에서도 독특함을 유지하려는 경향이 있습니다.')

insert into animal_member (id, name, personality) VALUES ('17', 'dog2', 'dog2')

delete from animal_member where id='1';


select * from animal_member;