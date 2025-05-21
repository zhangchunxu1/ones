CREATE TABLE tb_course (
    id BIGINT AUTO_INCREMENT COMMENT '课程id',
    code VARCHAR(32) NOT NULL COMMENT '课程编码',
    subject VARCHAR(32) NOT NULL COMMENT '课程学科',
    name VARCHAR(64) NOT NULL COMMENT '课程名称',
    price INT NOT NULL COMMENT '价格（元）',
    applicable_groups VARCHAR(32) NOT NULL COMMENT '适用人群',
    info VARCHAR(255) COMMENT '课程介绍',
    create_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
    update_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
    PRIMARY KEY (id)
) -- COMMENT='课程管理';
INSERT INTO tb_course (
    code, subject, name, price, applicable_groups, info
) VALUES
    ('cp123456', 'JavaEE', 'JavaSE基础', 199, '小白学员', 'JavaSE基础'),
    ('cp123457', 'JavaEE', 'JavaWeb', 188, '初级开发者', 'JavaWeb'),
    ('cp123458', 'Python+大数据', 'Python入门', 555, '小白学员', 'Python入门'),
    ('cp123459', 'Python+大数据', 'PythonWeb', 88, '初级开发者', 'PythonWeb'),
    ('cp123460', '鸿蒙应用开发', '鸿蒙入门', 99, '小白学员', '鸿蒙入门'),
    ('cp123461', '鸿蒙应用开发', '鸿蒙商城实战', 59, '初级开发者', '鸿蒙商城实战');
-- 如果上方忘记添加注释执行下方sql
ALTER TABLE tb_course COMMENT='课程管理';