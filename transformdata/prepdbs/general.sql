use trialag;
-- SQL to adapt the tables in the general DB

alter table course_grades convert to character set utf8mb4 collate utf8mb4_general_ci;
alter table hg_assessment_calibration_gradings convert to character set utf8mb4 collate utf8mb4_general_ci;
alter table hg_assessment_evaluation_metadata convert to character set utf8mb4 collate utf8mb4_general_ci;
alter table hg_assessment_overall_evaluation_metadata convert to character set utf8mb4 collate utf8mb4_general_ci;
alter table hg_assessment_peer_grading_metadata convert to character set utf8mb4 collate utf8mb4_general_ci;
alter table hg_assessment_peer_grading_set_metadata convert to character set utf8mb4 collate utf8mb4_general_ci;
alter table hg_assessment_self_grading_set_metadata convert to character set utf8mb4 collate utf8mb4_general_ci;
alter table hg_assessment_training_set_metadata convert to character set utf8mb4 collate utf8mb4_general_ci;
alter table hg_assessment_self_grading_set_metadata convert to character set utf8mb4 collate utf8mb4_general_ci;
alter table hg_assessment_submission_metadata convert to character set utf8mb4 collate utf8mb4_general_ci;
alter table hg_assessment_training_metadata convert to character set utf8mb4 collate utf8mb4_general_ci;
alter table hg_assessment_training_set_metadata convert to character set utf8mb4 collate utf8mb4_general_ci;
