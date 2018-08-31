-- phpMyAdmin SQL Dump
-- version 3.5.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 08 月 31 日 15:01
-- 服务器版本: 5.6.21-log
-- PHP 版本: 5.4.33

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `imooc-video-dev`
--

-- --------------------------------------------------------

--
-- 表的结构 `bgm`
--

CREATE TABLE IF NOT EXISTS `bgm` (
  `id` varchar(64) NOT NULL,
  `author` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL COMMENT '播放地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `bgm`
--

INSERT INTO `bgm` (`id`, `author`, `name`, `path`) VALUES
('18052674D26HH300', 'Hoaprox', 'Ngau Hung', '/bgm/Hoaprox - Ngau Hung.mp3'),
('18052674D26HH301', '火箭少女101', '卡路里', '/bgm/火箭少女101 - 卡路里 (clip).mp3'),
('18052674D26HH302', '阿里郎', ' 隔壁泰山', '/bgm/阿里郎 - 隔壁泰山 (clip).mp3'),
('18052674D26HH310', 'Jessy Matador', 'Bomba', '/bgm/Jessy Matador - Bomba (Remix Klass) (clip).mp3'),
('18052674D26HH311', '李袁杰', '离人愁', '/bgm/李袁杰 - 离人愁 (clip).mp3'),
('18052674D26HH312', 'Fly Project', 'Toca Toca', '/bgm/Fly Project - Toca Toca (Radio Edit) (clip).mp3'),
('18052674D26HH313', 'Dogg', 'The Next Episode', '/bgm/Dr. Dre _ Snoop Dogg _ Kurupt _ Nate Dogg - The Next Episode (clip).mp3'),
('18052674D26HH314', 'eluosi', 'eluosi', '/bgm/eluosi.mp3'),
('18052674D26HH315', '小潘潘', '学猫叫', '/bgm/小潘潘 _ 小峰峰 - 学猫叫 (clip).mp3'),
('18052674D26HH34P', 'Cartoons', 'Witch Doctor', '/bgm/Cartoons - Witch Doctor (Radio Mix) (clip).mp3'),
('18052674D26HH35P', '旭日阳刚', '怀念青春', '/bgm/刘刚（旭日阳刚） - 怀念青春 (clip).mp3'),
('18052674D26HH3X1', 'Yolanda Be Cool_Dcup', 'We No Speak Americano', '/bgm/Yolanda Be Cool _ Dcup - We No Speak Americano (clip).mp3'),
('18052674D26HH3X2', 'Pascal Letoublon', 'Friendships', '/bgm/Pascal Letoublon - Friendships (Original Mix) (clip).mp3'),
('18052674D26HH3X3', '南宫嘉骏', '回忆总想哭', '/bgm/南宫嘉骏 _ 姜玉阳 - 回忆总想哭 (clip).mp3'),
('18052674D26HH3X5', '起风了', '起风了', '/bgm/买辣椒也用券 - 起风了 (clip).mp3'),
('18052674D26HH3X6', '卢焱', '流浪', '/bgm/卢焱 - 流浪 (clip).mp3'),
('18052674D26HH3X7', 'PLANET', 'PLANET', '/bgm/PLANET (clip).mp3'),
('18052674D26HH3X8', 'Matteo', 'Panama', '/bgm/Matteo - Panama (clip).mp3'),
('18052674D26HH3X9', '跟风超人', '你打不过我吧', '/bgm/跟风超人 - 你打不过我吧 (clip).mp3');

-- --------------------------------------------------------

--
-- 表的结构 `comments`
--

CREATE TABLE IF NOT EXISTS `comments` (
  `id` varchar(20) NOT NULL,
  `father_comment_id` varchar(20) DEFAULT NULL,
  `to_user_id` varchar(20) DEFAULT NULL,
  `video_id` varchar(20) NOT NULL COMMENT '视频id',
  `from_user_id` varchar(20) NOT NULL COMMENT '留言者，评论的用户id',
  `comment` text NOT NULL COMMENT '评论内容',
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='课程评论表';

--
-- 转存表中的数据 `comments`
--

INSERT INTO `comments` (`id`, `father_comment_id`, `to_user_id`, `video_id`, `from_user_id`, `comment`, `create_time`) VALUES
('135240CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈1', '2018-05-22 19:52:02'),
('18034CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈2', '2018-05-22 19:52:02'),
('1803F50CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈3', '2018-05-22 19:52:02'),
('18052150CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈4', '2018-05-22 19:52:02'),
('180522F50626894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈5', '2018-05-22 19:52:02'),
('180522F50C126894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈6', '2018-05-22 19:52:02'),
('180522F50CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈7', '2018-05-22 19:52:02'),
('180522F5346894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈8', '2018-05-22 19:52:02'),
('180522F54CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈9', '2018-05-22 19:52:02'),
('180523F533Y0837C', NULL, NULL, '180510CD0A6K3SRP', '180425CFA4RB6T0H', 'dwdawdwa', '2018-05-23 19:52:19'),
('180523FATAR6C2Y8', '180523FB1BYS43HH', '180425CFA4RB6T0H', '180522FB4BZ1N9P0', '180518CKMAAM5TXP', '回复评论', '2018-05-23 20:09:30'),
('180523FB1BYS43HH', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '野马~~', '2018-05-23 20:10:09'),
('180523FC0MKCTS3C', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', 'dwdw', '2018-05-23 20:13:04'),
('180523FCZM2CTCZC', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', 'dwqdwqdqw', '2018-05-23 20:15:58'),
('180523FD1H5HG9P0', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '1fewdew', '2018-05-23 20:16:10'),
('180523FDBT3S3C00', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '123', '2018-05-23 20:17:16'),
('180523FDFX4HS5P0', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '43trgtew', '2018-05-23 20:17:36'),
('180523H79060HNHH', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '哈多好玩聊哦', '2018-05-23 22:47:06'),
('180523HATXR841KP', NULL, NULL, '180522FB4BZ1N9P0', '180425CFA4RB6T0H', '大家诶哦大家欧文', '2018-05-23 22:57:42'),
('180523K2DG3SGAA8', NULL, NULL, '180522FB4BZ1N9P0', '180518CKMAAM5TXP', 'dwdw', '2018-05-23 23:56:38'),
('180523K2YRF1WNXP', NULL, NULL, '180522FB4BZ1N9P0', '180518CKMAAM5TXP', 'ddew', '2018-05-23 23:58:03'),
('180523K3FH1WT7R4', NULL, NULL, '180522FB4BZ1N9P0', '180518CKMAAM5TXP', 'tgergre', '2018-05-23 23:59:45'),
('1805240G4G19R0PH', '180523HATXR841KP', '180425CFA4RB6T0H', '180522FB4BZ1N9P0', '180518CKMAAM5TXP', '回复测试，final', '2018-05-24 00:45:31'),
('18055W46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈11', '2018-05-22 19:52:02'),
('180565016894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈22', '2018-05-22 19:52:02'),
('1805650CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈33', '2018-05-22 19:52:02'),
('1805twW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈44', '2018-05-22 19:52:02'),
('280522F50CW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈55', '2018-05-22 19:52:02'),
('qq1805twW46894', NULL, NULL, '180510CD0A6K3SRP', '180518CKMAAM5TXP', 'hhhh 测试啊哈哈哈66', '2018-05-22 19:52:02');

-- --------------------------------------------------------

--
-- 表的结构 `search_records`
--

CREATE TABLE IF NOT EXISTS `search_records` (
  `id` varchar(64) NOT NULL,
  `content` varchar(255) NOT NULL COMMENT '搜索的内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='视频搜索的记录表';

--
-- 转存表中的数据 `search_records`
--

INSERT INTO `search_records` (`id`, `content`) VALUES
('1', '慕课网'),
('18051309YBCMHYRP', '风景'),
('1805130DAXX58ARP', '风景'),
('1805130DMG6P0ZC0', '风景'),
('1805130FNGHD3B0H', '慕课网'),
('180513C94W152Z7C', 'dwqdwq'),
('180513DXNT7SY04H', '风景'),
('2', '慕课网'),
('3', '慕课网'),
('4', '慕课网'),
('5', '慕课'),
('6', '慕课'),
('7', 'zookeeper'),
('8', 'zookeeper'),
('9', 'zookeeper');

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` varchar(64) NOT NULL,
  `username` varchar(20) NOT NULL COMMENT '用户名',
  `password` varchar(64) NOT NULL COMMENT '密码',
  `face_image` varchar(255) DEFAULT NULL COMMENT '我的头像，如果没有默认给一张',
  `nickname` varchar(20) NOT NULL COMMENT '昵称',
  `fans_counts` int(11) DEFAULT '0' COMMENT '我的粉丝数量',
  `follow_counts` int(11) DEFAULT '0' COMMENT '我关注的人总数',
  `receive_like_counts` int(11) DEFAULT '0' COMMENT '我接受到的赞美/收藏 的数量',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `face_image`, `nickname`, `fans_counts`, `follow_counts`, `receive_like_counts`) VALUES
('180828HDTTW46DGC', 'dulei', 'wzNncBURtPYCDsYd7TUgWQ==', NULL, 'dulei', 0, 0, 0),
('180828HH8ZH22B7C', 'xox', '4QrcOUm6Wau+VuBX8g+IPg==', NULL, 'xox', 0, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `users_fans`
--

CREATE TABLE IF NOT EXISTS `users_fans` (
  `id` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL COMMENT '用户',
  `fan_id` varchar(64) NOT NULL COMMENT '粉丝',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`,`fan_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户粉丝关联关系表';

-- --------------------------------------------------------

--
-- 表的结构 `users_like_videos`
--

CREATE TABLE IF NOT EXISTS `users_like_videos` (
  `id` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL COMMENT '用户',
  `video_id` varchar(64) NOT NULL COMMENT '视频',
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_video_rel` (`user_id`,`video_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='用户喜欢的/赞过的视频';

--
-- 转存表中的数据 `users_like_videos`
--

INSERT INTO `users_like_videos` (`id`, `user_id`, `video_id`) VALUES
('180520HBA054FPPH', '180518CKMAAM5TXP', '180510CCX05TABHH'),
('180520HSBDW6M0SW', '180518CKMAAM5TXP', '180510CD0A6K3SRP');

-- --------------------------------------------------------

--
-- 表的结构 `users_report`
--

CREATE TABLE IF NOT EXISTS `users_report` (
  `id` varchar(64) NOT NULL,
  `deal_user_id` varchar(64) NOT NULL COMMENT '被举报用户id',
  `deal_video_id` varchar(64) NOT NULL,
  `title` varchar(128) NOT NULL COMMENT '类型标题，让用户选择，详情见 枚举',
  `content` varchar(255) DEFAULT NULL COMMENT '内容',
  `userid` varchar(64) NOT NULL COMMENT '举报人的id',
  `create_date` datetime NOT NULL COMMENT '举报时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='举报用户表';

--
-- 转存表中的数据 `users_report`
--

INSERT INTO `users_report` (`id`, `deal_user_id`, `deal_video_id`, `title`, `content`, `userid`, `create_date`) VALUES
('180521FZ501ABDYW', '180425CFA4RB6T0H', '180510CD0A6K3SRP', '引人不适', '不合时宜的视频', '180518CKMAAM5TXP', '2018-05-21 20:58:35'),
('180521FZK44ZRWX4', '180425CFA4RB6T0H', '180510CD0A6K3SRP', '引人不适', '不合时宜的视频', '180518CKMAAM5TXP', '2018-05-21 20:59:53'),
('180521FZR1TYRTXP', '180425CFA4RB6T0H', '180510CD0A6K3SRP', '辱骂谩骂', 't4t43', '180518CKMAAM5TXP', '2018-05-21 21:00:18');

-- --------------------------------------------------------

--
-- 表的结构 `videos`
--

CREATE TABLE IF NOT EXISTS `videos` (
  `id` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL COMMENT '发布者id',
  `audio_id` varchar(64) DEFAULT NULL COMMENT '用户使用音频的信息',
  `video_desc` varchar(128) DEFAULT NULL COMMENT '视频描述',
  `video_path` varchar(255) NOT NULL COMMENT '视频存放的路径',
  `video_seconds` float(6,2) DEFAULT NULL COMMENT '视频秒数',
  `video_width` int(6) DEFAULT NULL COMMENT '视频宽度',
  `video_height` int(6) DEFAULT NULL COMMENT '视频高度',
  `cover_path` varchar(255) DEFAULT NULL COMMENT '视频封面图',
  `like_counts` bigint(20) NOT NULL DEFAULT '0' COMMENT '喜欢/赞美的数量',
  `status` int(1) NOT NULL COMMENT '视频状态：\r\n1、发布成功\r\n2、禁止播放，管理员操作',
  `create_time` datetime NOT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='视频信息表';

--
-- 转存表中的数据 `videos`
--

INSERT INTO `videos` (`id`, `user_id`, `audio_id`, `video_desc`, `video_path`, `video_seconds`, `video_width`, `video_height`, `cover_path`, `like_counts`, `status`, `create_time`) VALUES
('180510CC3819RHBC', '180425CFA4RB6T0H', '', '风景', '/180425CFA4RB6T0H/video/wxa2049f5aead89372.o6zAJs5sm5bPFcTzKXp_5wXsWuso.R5zVt7RTx6Vv6ee923498030ecd9328acf709bb3a278.mp4', 10.05, 960, 540, '/180425CFA4RB6T0H/video/wxa2049f5aead89372o6zAJs5sm5bPFcTzKXp_5wXsWusoR5zVt7RTx6Vv6ee923498030ecd9328acf709bb3a278.jpg', 0, 1, '2018-05-10 17:25:13'),
('180510CCCK8A6S14', '180425CFA4RB6T0H', '', '夏天夏天', '/180425CFA4RB6T0H/video/wxa2049f5aead89372.o6zAJs5sm5bPFcTzKXp_5wXsWuso.upJlpa1Oc99Zaf561ddc63a69c13472506f586cda815.mp4', 10.00, 960, 540, '/180425CFA4RB6T0H/video/wxa2049f5aead89372o6zAJs5sm5bPFcTzKXp_5wXsWusoupJlpa1Oc99Zaf561ddc63a69c13472506f586cda815.jpg', 0, 1, '2018-05-10 17:26:13'),
('180510CCK95WNG7C', '180425CFA4RB6T0H', '', '海贼王', '/180425CFA4RB6T0H/video/wxa2049f5aead89372.o6zAJs5sm5bPFcTzKXp_5wXsWuso.nPTyoc9tyI3kabf2c7ceeb9b446b60b47b1705668857.mp4', 10.02, 544, 960, '/180425CFA4RB6T0H/video/wxa2049f5aead89372o6zAJs5sm5bPFcTzKXp_5wXsWusonPTyoc9tyI3kabf2c7ceeb9b446b60b47b1705668857.jpg', 0, 1, '2018-05-10 17:26:43'),
('180510CCNC7C9FCH', '180425CFA4RB6T0H', '', '吃饭吃饭', '/180425CFA4RB6T0H/video/wxa2049f5aead89372.o6zAJs5sm5bPFcTzKXp_5wXsWuso.uG2pt2vkkRI586933d88b91b9577ff8d2d4864443a50.mp4', 6.02, 960, 544, '/180425CFA4RB6T0H/video/wxa2049f5aead89372o6zAJs5sm5bPFcTzKXp_5wXsWusouG2pt2vkkRI586933d88b91b9577ff8d2d4864443a50.jpg', 0, 1, '2018-05-10 17:26:57'),
('180510CCSFC45A5P', '180425CFA4RB6T0H', '', '风景可以', '/180425CFA4RB6T0H/video/wxa2049f5aead89372.o6zAJs5sm5bPFcTzKXp_5wXsWuso.L5WSh3OtMAgf9e6b52aed5830d1bfcfdcb98b2600280.mp4', 9.90, 960, 404, '/180425CFA4RB6T0H/video/wxa2049f5aead89372o6zAJs5sm5bPFcTzKXp_5wXsWusoL5WSh3OtMAgf9e6b52aed5830d1bfcfdcb98b2600280.jpg', 0, 1, '2018-05-10 17:27:17'),
('180510CCX05TABHH', '180425CFA4RB6T0H', '', '变魔术', '/180425CFA4RB6T0H/video/wxa2049f5aead89372.o6zAJs5sm5bPFcTzKXp_5wXsWuso.yptyFK8MwgrL9e2d3e37c168928a9db960e3b24f782b.mp4', 6.02, 540, 960, '/180425CFA4RB6T0H/video/wxa2049f5aead89372o6zAJs5sm5bPFcTzKXp_5wXsWusoyptyFK8MwgrL9e2d3e37c168928a9db960e3b24f782b.jpg', 1, 1, '2018-05-10 17:27:33'),
('180510CD0A6K3SRP', '180425CFA4RB6T0H', '', '来一场说走就走的旅行', '/180425CFA4RB6T0H/video/wxa2049f5aead89372.o6zAJs5sm5bPFcTzKXp_5wXsWuso.qtm2zeEgenrf7993bfb60dbac65af7b7847d51ee4445.mp4', 5.02, 960, 544, '/180425CFA4RB6T0H/video/wxa2049f5aead89372o6zAJs5sm5bPFcTzKXp_5wXsWusoqtm2zeEgenrf7993bfb60dbac65af7b7847d51ee4445.jpg', 3, 1, '2018-05-10 17:27:54'),
('180513FW054FFRAW', '180425CFA4RB6T0H', '', '复用上传测试', '/180425CFA4RB6T0H/video/wxa2049f5aead89372.o6zAJs5sm5bPFcTzKXp_5wXsWuso.Bc21hNytcS0M2da7b7e0f5cc83d362eba78aec81adb9.mp4', 7.52, 544, 960, '/180425CFA4RB6T0H/video/wxa2049f5aead89372o6zAJs5sm5bPFcTzKXp_5wXsWusoBc21hNytcS0M2da7b7e0f5cc83d362eba78aec81adb9.jpg', 0, 1, '2018-05-13 20:49:03'),
('180522FB4BZ1N9P0', '180425CFA4RB6T0H', '', '骑着野马出去浪………~~', '/180425CFA4RB6T0H/video/tmp_5e574148aa8356149758ec969b108886.mp4', 9.00, 540, 960, '/180425CFA4RB6T0H/video/tmp_5e574148aa8356149758ec969b108886.jpg', 0, 1, '2018-05-22 20:10:28');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
