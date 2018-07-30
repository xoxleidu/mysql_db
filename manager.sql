-- phpMyAdmin SQL Dump
-- version 3.5.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 07 月 30 日 22:52
-- 服务器版本: 5.6.21-log
-- PHP 版本: 5.4.33

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `manager`
--

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '编号',
  `name` varchar(50) COLLATE utf8_unicode_ci NOT NULL COMMENT '名称',
  `threshold_amount` decimal(15,3) NOT NULL DEFAULT '0.000' COMMENT '起投金额',
  `step_amount` decimal(15,3) NOT NULL DEFAULT '0.000' COMMENT '投资步长',
  `lock_term` smallint(6) NOT NULL DEFAULT '0' COMMENT '锁定期,单位天',
  `reward_rate` decimal(5,3) NOT NULL COMMENT '收益率,0-100,百分比',
  `status` varchar(20) COLLATE utf8_unicode_ci NOT NULL COMMENT '状态,销售中,锁定,已结束',
  `memo` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '备注',
  `create_at` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '创建者ID',
  `update_at` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '更新者ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `name`, `threshold_amount`, `step_amount`, `lock_term`, `reward_rate`, `status`, `memo`, `create_at`, `create_user`, `update_at`, `update_user`) VALUES
('006', '金融6号', '10.000', '1.000', 6, '6.860', 'IN_SELL', NULL, NULL, NULL, NULL,NULL),
('007', '金融7号', '10.000', '1.000', 6, '7.860', 'IN_SELL', NULL, NULL, NULL, NULL,NULL),
('008', '金融8号', '10.000', '1.000', 6, '7.860', 'IN_SELL', NULL, NULL, NULL, NULL,NULL),
('T001', '灵活宝1号', '10.000', '1.000', 0, '3.420', 'IN_SELL', NULL, NULL, NULL, NULL,NULL),
('T002', '活期盈-金色人生', '10.000', '0.000', 0, '3.280', 'IN_SELL', NULL, NULL, NULL, NULL,NULL),
('T003', '朝朝盈-聚财', '100.000', '10.000', 0, '3.860', 'IN_SELL', NULL, NULL, NULL, NULL,NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
