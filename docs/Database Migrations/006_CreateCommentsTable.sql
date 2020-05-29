create table comments
(
    commentId INTEGER PRIMARY KEY,
    content   TEXT NOT NULL,
    createdIn INT  NOT NULL,
    createdBy INT  NOT NULL,
    updatedIn INT  NULL,
    taskId    INT  NOT NULL,

    FOREIGN KEY (createdBy) REFERENCES users (userId),
    FOREIGN KEY (taskId) REFERENCES tasks (taskId)
);
insert into migrations (dbVersion) values (5);