INSERT INTO tb_user (name, email, password) VALUES ('Alex', 'alex@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Bob', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Maria', 'maria@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_STUDENT');
INSERT INTO tb_role (authority) VALUES ('ROLE_INSTRUCTOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_ADMIN');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);

INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);

INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 2);
INSERT INTO tb_user_role (user_id, role_id) VALUES (3, 3);

INSERT INTO tb_course (name, img_Uri, img_Gray_Uri) VALUES ('Bootcamp HTML','https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d','https://upload.wikimedia.org/wikipedia/commons/thumb/e/e7/Logo_Course_Croisi%C3%A8re_EDHEC_noir.png/901px-Logo_Course_Croisi%C3%A8re_EDHEC_noir.png?20160102194649');

INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('1.0', TIMESTAMP WITH TIME ZONE '2022-06-14T03:00:00Z', TIMESTAMP WITH TIME ZONE '2023-06-14T03:00:00Z', 1); 
INSERT INTO tb_offer (edition, start_Moment, end_Moment, course_id) VALUES ('2.0', TIMESTAMP WITH TIME ZONE '2022-12-14T03:00:00Z', TIMESTAMP WITH TIME ZONE '2023-12-14T03:00:00Z', 1); 

INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Trilha HTML', 'Trilha principal do curso', 1, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Forum', 'Tire suas dúvidas', 2, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 2, 1);
INSERT INTO tb_resource (title, description, position, img_Uri, type, offer_id) VALUES ('Lives', 'Lives exclusivas para a turma', 3, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 0, 1);

INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 1', 'Nesse capítulo vamos começar', 1, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, null);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 2', 'Nesse capítulo vamos continuar', 2, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, 1);
INSERT INTO tb_section (title, description, position, img_Uri, resource_id, prerequisite_id) VALUES ('Capítulo 3', 'Nesse capítulo vamos finalizar', 3, 'https://c.pxhere.com/images/07/b2/f8ed07d6f1a9c740e7703cbb99ee-1443423.jpg!d', 1, 2);

INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refound_Moment, available, only_update) VALUES (1, 1, TIMESTAMP WITH TIME ZONE '2022-06-14T13:00:00Z', null, true, false);
INSERT INTO tb_enrollment (user_id, offer_id, enroll_Moment, refound_Moment, available, only_update) VALUES (2, 1, TIMESTAMP WITH TIME ZONE '2022-06-14T13:00:00Z', null, true, false);