-- MySQL dump 10.13  Distrib 5.7.25, for Win64 (x86_64)
--
-- Host: localhost    Database: db_my_blog
-- ------------------------------------------------------
-- Server version	5.7.25-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `app_article`
--

DROP TABLE IF EXISTS `app_article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `title` varchar(100) NOT NULL,
  `intro` varchar(255) NOT NULL,
  `vnum` int(11) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `is_top` tinyint(1) NOT NULL,
  `content` longtext NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_article_category_id_7e0b83c8_fk_app_category_id` (`category_id`),
  KEY `app_article_user_id_b6977a19_fk_app_bloguser_id` (`user_id`),
  CONSTRAINT `app_article_category_id_7e0b83c8_fk_app_category_id` FOREIGN KEY (`category_id`) REFERENCES `app_category` (`id`),
  CONSTRAINT `app_article_user_id_b6977a19_fk_app_bloguser_id` FOREIGN KEY (`user_id`) REFERENCES `app_bloguser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_article`
--

LOCK TABLES `app_article` WRITE;
/*!40000 ALTER TABLE `app_article` DISABLE KEYS */;
INSERT INTO `app_article` VALUES (1,0,'2020-03-29 06:42:04.594185','2020-04-01 13:56:36.479898','IU@李智恩','一个光听她唱歌就会被圈饭的神奇物种——IU',41,'article/2020/03/29/iu.jpg',0,'<p><span class=\"icons-quote\" style=\"font-style: normal; display: inline-block; background-image: url(&quot;https://bkssl.bdimg.com/static/wiki-tashuo/less/article/resource/img/article-icons_f44b095.png&quot;); background-repeat: no-repeat; vertical-align: 6px; background-position: -98px -2px; width: 17px; height: 15px; margin-right: 17px;\"></span>为什么喜欢这个93年的girl，长相甜美肯定是其中的一点，穿着红色小裙子再踩着高跟，连女生都惊叹大屏幕上的IU实在是太美了。说句实话，橘子君之前对IU无感，只是这一晚上的时间，现在想对她了解更多，想听更多她的歌曲，想看她的照片，这种状况是不是已经中了IU的毒了？</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><span style=\"line-height: 26px;\">IU昨天（</span><span style=\"line-height: 26px;\">2015-12-20</span><span style=\"line-height: 26px;\">）到北京演出来着，五棵松，这三个字被她说成了“五颗熊”，发音特别的可爱</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/11385343fbf2b21130be085dc38065380cd78e15.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">现场粉丝清一色的90后，打扮时髦新潮，在演出开始前就大声喊：I~U~，其中不乏许多戴眼镜的阳光宅男</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">为什么喜欢这个93年的girl，长相甜美肯定是其中的一点，穿着红色小裙子再踩着高跟，连女生都惊叹大屏幕上的IU实在是太美了</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">闹木闹木耶波呦！</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/86d6277f9e2f07087f7ea713e024b899a901f2ae.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">不过光看脸的话岂不是太肤浅了吗，最重要的是她从内到外都让人喜欢</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/472309f7905298220f61b4d0deca7bcb0a46d457.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">当天橘子君带着三位中奖的小橘儿一起去哒！开星~</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/caef76094b36acaf9b7f1bef75d98d1001e99c02.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">IU一开始就一连唱了好几首歌曲，高音部分也都轻松地飙了上去。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">都说真正的歌手现场版比录音版要好听十倍，真的，音响传出来，全场回荡的是IU甜美的嗓音，是她富有感染力的嗓音，又唱又跳，带给耳朵实打实的福利</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/562c11dfa9ec8a130a61daf3fe03918fa0ecc0ae.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/21a4462309f79052e464ca2d05f3d7ca7bcbd5ae.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">IU唱的 《斑马斑马》 在微博上疯转来着，大家都评论说IU唱得太好听了，发音是真的好！</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/3b292df5e0fe9925649ce4433da85edf8db17115.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">IU为了这首歌听了 一千多遍 ，听起来很轻松是吧，你把你最喜欢的一首歌听上一千遍试试</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/359b033b5bb5c9ea83888ef0dc39b6003af3b3ae.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">很多韩国艺人一来中国就会唱什么《月亮代表我的心》、什么《甜蜜蜜》啦这些……唱完还被夸唱得好、发音标准</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">拜托这首歌都被唱烂了好嘛！敢选一首新一点的嘛！就你那“ne”“le”都不分的发音还敢说标准？</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/3bf33a87e950352a581aa81b5a43fbf2b2118bae.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">再看IU，《喜帖街》《挥着翅膀的女孩》《YOUNG》再到昨晚的《斑马斑马》，有小众还有粤语，还有什么是你不会唱的？</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">而且在现场听毫无违和感，标准的普通话发音，咬字清晰，再配上款款深情，橘子君当时就内心os：快去参加《我是歌手》第四季吧，想听你唱歌</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/9e3df8dcd100baa1cebfcaa84e10b912c8fc2e15.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">IU说自己的风格要转变成熟女风，可是这个93年的gir一举一动都透露着可爱</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/35a85edf8db1cb13973bb100d454564e92584b57.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/9358d109b3de9c823737749c6581800a19d84357.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/b7fd5266d0160924b6b62f08dd0735fae6cd3415.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">她说：</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">【机场有粉丝接机，还握手送花送礼物，好开星！】</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">【想次北京烤鸭可是工作人员太忙了木有时间次】</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">【最近没有运动竟然瘦了，真的是中彩了】</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">【看起来发质好那是因为舞台上灯光打得好】</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">还有一位男痴汉在台下大喊：“IU SOLO NO.1！”</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">IU：“你也NO.1！”（此处是上扬的语调）</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/43a7d933c895d14387e869307af082025aaf0702.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">当时不是和粉丝互动来着嘛，讲真，有一个被IU暖哭了</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/f9198618367adab40743965082d4b31c8701e416.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">IU把亲笔签名海报一张一张送到粉丝手里，还一个个说：这是你的~你的~给你的~</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">好像幼儿园的老师在给小朋友分发食物，好温柔嘤嘤嘤！</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/b21c8701a18b87d673dc260c0e0828381f30fd03.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">她还特别嘱咐中国的粉丝要戴好口罩，注意身体健康</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">【你们想让我拍古装戏吗，好！那我就拍！】</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">【以后来中国一定要唱中文歌】</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">【要记录下每位粉丝的脸然后带走，眼睛就是照相机，咔嚓咔嚓】</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsa.baidu.com/baike/pic/item/b151f8198618367a9674f2ce27738bd4b31ce520.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">真真儿的暖哭了</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">最后的最后，在安可之后，很多粉丝依然在台下大声呼唤：I~U~I~U~</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">真的不舍得走T-T</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">说句实话，橘子君之前对IU无感，只是这一晚上的时间，现在想对她了解更多，想听更多她的歌曲，想看她的照片，这种状况是不是已经中了IU的毒了？</p><p><br/></p>',1,1),(2,0,'2020-03-29 07:15:28.970037','2020-03-31 05:51:53.058298','易烊千玺','易烊千玺，你真的不应该演《少年的你》否则，我就不会一夜之间，多了那么多情敌！',21,'article/2020/03/29/yyqx6.jpg',1,'<p><span class=\"icons-quote\" style=\"font-style: normal; display: inline-block; background-image: url(&quot;https://bkssl.bdimg.com/static/wiki-tashuo/less/article/resource/img/article-icons_f44b095.png&quot;); background-repeat: no-repeat; vertical-align: 6px; background-position: -98px -2px; width: 17px; height: 15px; margin-right: 17px;\"></span>如今，他已经出道6年，却始终踏踏实实努力，保有最真诚的初心。 可他也不过才19岁，还有那么多机会，可以探索未来的无限可能。 比你优秀的人还比你努力。 19岁的易烊千玺已经出发很久了，那么你呢？ 做好出发的准备了吗？</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">易烊千玺，你真的不应该演《少年的你》否则，我就不会一夜之间，多了那么多情敌！</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">你最近一次心动是什么时候？<br/>我做梦都没想到，这个问题的答案，是<span style=\"font-weight: 700;\">易烊千玺</span>给我的。<br/>前段时间，他和周冬雨主演的电影《少年的你》上映。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">本以为是轻松的青春片，可大家都看哭了。<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/14ce36d3d539b600370405c2e650352ac75cb7f8.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">这么多年过去，易烊千玺不再是那个唱“左手右手一个慢动作”的小男孩。<br/>电影里，他有了想要保护的人。<br/><span style=\"font-weight: 700;\">“你是第一个问我疼不疼的人”。</span><span style=\"font-weight: 700;\"><br/></span>对这个过得很苦的孤独少年来说，陈念的一句话，瞬间填满了他的心。<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/1e30e924b899a90182302e4312950a7b0208f5ba.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">一个是被妈妈抛弃、13岁就在刀口舔血讨生活的混混，另一个是正经历着校园暴力的女孩。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">他们生活在阴沟，却相互守望，分享脆弱和温暖。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">小北把最好的一面都留给了陈念。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">他们都知道，对他们这样的人来说，只有高考能改变命运。所以，他用尽全力成全她的未来。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">为了守护这个女孩，他厮打得浑身是伤，回来时都不忘给她带口吃的。<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/e824b899a9014c08a13e5dd0057b02087bf4f4ba.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">只有在她面前，他才可以做回普通少年。<br/>他载着她穿过城市和人群，一起看金鱼，吃薯片，一起幼稚地扮鬼尖叫。<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/d439b6003af33a87e6fa0a6fc95c10385343b52b.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">陈念进考场时，小北轻声说着加油；他还悄悄在下雨的路边，绑上了盛开的雏菊花。<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">虽然他表面总是叛逆又冷漠，可在内心的某个角落，他是如此热切地希望着，她有鲜花一样的未来。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">所以当小北下定决心帮陈念顶罪时，警察把他按倒在地，他看了眼身边的女孩。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/4d086e061d950a7bd0303bb105d162d9f2d3c9ba.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">那样复杂的一个眼神，深刻的绝望背后，是他守护陈念的笃定。为了她的未来，他心甘情愿自己坠入地狱。<br/>这一刻，他们之间的感情，超越了爱情。<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/6a63f6246b600c337d7cabbd154c510fd9f9a1ba.jpg\" class=\"\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">不知道你有没有发现：<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">好像一夜之间，无论朋友圈还是微博，专业编剧、作家亦或是普通影迷……都在夸奖这个新人演员。<br/>易烊千玺。无论你过去如何看待他，如今都不得不刮目相看。<br/>他到底好在哪儿？</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/023b5bb5c9ea15ce3c24ea7cb9003af33b87b2f8.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">很多流量明星喜欢用<span style=\"font-weight: 700;\">「努力」</span>来标榜自己。大话放出去，可呈现到屏幕上的结果却总不如人意。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">从他们瞪大的眼睛、扭曲的表情，或诡笑、或面瘫式的情绪表达方式里，我们能看到的不是努力，当然也不是演技。<br/>而是一种浮在表面的空洞。<br/>但19岁的易烊千玺不是。<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/0bd162d9f2d3572cc9e7e9a98513632762d0c3ba.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">对这个年轻人来说，说是“实力派”或许为时过早。但他的眼神，的的确确能让人一秒入戏。<br/>平时没什么表情的男孩，一旦到了镜头下，眼神中的故事让人体会到「少年老成」这四个字的含义。<br/>他可以用眼神完成情绪的层次化表达，也hold住大量的面部特写。<br/>在正片片段里，有一幕戏是陈念和小北在监狱内隔窗对视。没有台词，却看哭无数观众。<br/>一起感受下：</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">还有网友做了这样一组眼神对比：<br/>小北看别人的眼神，只有狠厉和冷漠。<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/03087bf40ad162d924eb17691edfa9ec8a13cdba.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">可看陈念的眼神，却深情又温柔。<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/b7003af33a87e95025ddf9191f385343faf2b4f8.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">“他的眼神里有内容。”<br/>不止一个人这么评价过他。<br/>曾国祥说，“他的眼睛里是带着感情的，他里面有思想有东西，我很少见到一个年轻人是这样的。”<br/>连时尚杂志也格外偏爱他。<br/>跟他合作过的摄影师，无一例外给出了好评。<br/>“从他身上看到了无限的可能性。”<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/562c11dfa9ec8a13b81f2295f803918fa0ecc0ba.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/c75c10385343fbf2a7e6ac56bf7eca8064388ff8.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/ac345982b2b7d0a22e5e0ee8c4ef76094b369a2b.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">更不用提不久前播出的《长安十二时辰》，他给人带来了怎样的惊喜。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">原著中曾这样描写李必这个角色：<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">少年人脸圆而小，青涩之气尚未褪尽，眉宇之间却隐隐已有了三道浅纹，显然是思虑过甚。他穿一袭窄袖绿袍，腰间挂着一枚银鱼袋，手里却拿着一把道家的拂尘。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">不知为什么，看到这段话，很容易跟易烊千玺联系起来。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">都说少年不识愁滋味。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">可他那轻蹙起的眉宇之间，那双似忧似怒，暗含凌厉的眼神，谁又能说他不理解复杂人世间的个中滋味？</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/9213b07eca8065381620ae6698dda144ac3482f8.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/e4dde71190ef76c69a45f15e9216fdfaaf51672b.jpg\" class=\"\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">电影首映，易烊千玺听到了这样一句评价，</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><span style=\"font-weight: 700;\">“你是一个演员，不是一个偶像。</span><span style=\"font-weight: 700;\">”</span><span style=\"font-weight: 700;\"><br/></span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/55e736d12f2eb938aefa7087da628535e5dd6f2b.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">说这话的，是<span style=\"font-weight: 700;\">陈可辛的御用编剧</span>张翼，也是易烊千玺口中“很专业很厉害的业内人士”。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">听到这句很有分量的肯定，他先是鞠了个躬，然后扭过头，绷不住哭了。<br/>虽然直到今天，易烊千玺才真正被更多注意到，但你很难说清楚，他内心的故事是从哪一刻开始的。<br/>的确，他曾一夜成名，13岁就被选中，以TFBOYS组合出道。<br/>但说到底，演技才是底气，是明星最大的滤镜<span style=\"font-weight: 700;\">。</span><span style=\"font-weight: 700;\"><br/></span>在我看来，有人想向上走，永远只做明星，看着虚幻的舞台灯光，迷失在人群的尖叫和掌声里；<br/>但也有人想往下走，逃开社会的浮躁和观众的追捧，在内心力量的引导之下，走向更广阔的天地。<br/>易烊千玺属于后者。<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">在演戏之外，他有14年跳舞、会唱歌、会乐器，写得一手好字，还喜欢泥塑……</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">优秀到不真实的程度。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/0df431adcbef76096d9c93ea21dda3cc7cd99e2b.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">更可怕的是他的高考分数。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">去年，他以专业成绩第一、文化课成绩双料第一，被中央戏剧学院表演系话剧影视表演专业录取。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">是运气，还是实力？</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">直到我看了网上流传的易烊千玺高三行程总结，再无法质疑什么。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/a2cc7cd98d1001e914ab1e7ab70e7bec54e7972b.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">哪有什么一夜成名，不过是百炼成钢。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">面对质疑，他从不解释，但在别人看不到的地方，他一定会默默努力，用更多汗水，“做出非常牛的作品”。<br/>就像村上春树说的一样，不管全世界所有人怎么说，我都认为自己的感受才是正确的，无论别人怎么看，我绝不打乱自己的节奏。<br/><span style=\"font-weight: 700;\">长长的时间表背后，是一颗专注虔诚的心。</span><span style=\"font-weight: 700;\"><br/></span><span style=\"font-weight: 700;\"></span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/cf1b9d16fdfaaf51b1748bca835494eef01f7a2b.jpg\" class=\"\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">曾看到有人问，一个人身上最重要的特质是什么？</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">有人说，是勇气，也有人说，是智慧。可有个人是这样回答的。<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">无论如何，真诚最重要。实力强大并不一定会获得别人的尊重和喜欢。只有真诚能让人久看不厌。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">《这就是街舞》中，易烊千玺是最年轻的队长，可整场节目下来，没有人对他不服气。<br/>记得有一场比赛，他的学员被淘汰离开舞台。主持人问他有没有话送给对方。他咬了咬嘴唇说，“我没有。”<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/902397dda144ad3446758df2dfa20cf430ad85f8.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">或许很多人以为，这样的回答显得很冷漠。<br/>可镜头一转，原来他已偷偷红了眼眶。<br/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/5882b2b7d0a20cf4125af4aa79094b36adaf99f8.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">这一刻，温柔中的细腻和真诚，在他身上表现得淋漓尽致。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><span style=\"font-weight: 700;\">不是没受到过质疑，只是他统统用真诚回应。</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">节目录制过程中，一个女舞者因为男友被淘汰，气愤不平地冲到台前。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">她把矛头对准易烊千玺，问什么才叫能打动他的舞蹈。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">女舞者显然情绪激动，但千玺的反应大大出乎人意料。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">他没有因为这种质疑而失控，反而耐心地听对方说完，时不时点点头，给与鼓励。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/00e93901213fb80e4b1b6ba239d12f2eb83894f8.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">等她讲完，情绪稍微平复之后，他才给出了自己的解释。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">在这种时刻，他首先想到的不是自己的面子，而是站在对方的角度，让她把情绪发泄出来。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">哪怕他那段时间，每天忙到凌晨，但他从没把情绪撒到别人身上。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/7aec54e736d12f2e8d92a41540c2d5628535682b.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">下场后，他还特意找到对方，以一场平等的交流化解误会。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">所以，哪怕他沉默寡言，有着与年龄不符的稳重，哪怕这个男孩看起来总是不够快乐。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">可一旦你发现了这份骨子里的真诚，就很难不喜欢他。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">因为这件事，编剧史航给予了高度评价，</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><span style=\"font-weight: 700;\">“少年之诚，足以消弭戾气。</span><span style=\"font-weight: 700;\">”</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">前路依然漫漫，但少年未来可期。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><span style=\"font-weight: 700;\">身在名利场，可他已经懂得珍惜自己的羽毛。无论做人还是做事，每一次都拼尽全力。</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><span style=\"font-weight: 700;\">说真的，而</span><span style=\"font-weight: 700;\">这才是偶像该有的样子！</span></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\"><img src=\"https://imgsrc.baidu.com/baike/pic/item/4ec2d5628535e5ddddbbafaa79c6a7efce1b622b.jpg\" style=\"border: 0px; max-width: 100%; height: auto; margin: 0px auto; display: block; width: auto;\"/></p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">如今，他已经出道6年，却始终踏踏实实努力，保有最真诚的初心。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">可他也不过才19岁，还有那么多机会，可以探索未来的无限可能。</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">比你优秀的人还比你努力。<br/>19岁的易烊千玺已经出发很久了，那么你呢？</p><p style=\"margin-top: 0px; margin-bottom: 20px; padding: 0px;\">做好出发的准备了吗？&nbsp;</p><p><br/></p>',4,1),(3,0,'2020-03-29 07:30:38.751390','2020-03-31 06:06:21.366834','朴灿烈','朴灿烈与punch合作曲，点击量破两亿，韩剧OST史上第一个破亿MV',30,'article/2020/03/29/pcl0.jpg',0,'<p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">《鬼怪》已经是2016年的电视剧了，已经过了3年多的时间，依旧是每隔一段时间都会拿出来重温的韩剧。这部剧不光演员给力，而且OST还非常的棒！当初播出的时候收视率非常的高，目前依旧是TVN的收视纪录冠军！</span></p><p><img class=\"large\" data-loadfunc=\"0\" src=\"https://pics7.baidu.com/feed/3b292df5e0fe9925723d5faf6fac33d98db17122.jpeg?token=f72c454fa1084acc03b291831d87151c\" data-loaded=\"0\" style=\"border: 0px; width: 600px; display: block;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">故事讲述了曾被世人赞颂为神的高丽国将军金侁，也就是鬼怪（孔刘饰），遇上了命中注定的鬼怪新娘池恩倬（金高银饰），展开了浪漫又搞笑的奇幻爱情故事，而且当时大结局的收视率更突破20％。</span></p><p><img class=\"large\" data-loadfunc=\"0\" src=\"https://pics6.baidu.com/feed/37d3d539b6003af37bfcba066e2eab5a1038b618.jpeg?token=5f7532a1f2405e1bdab9e812b27b8a2c\" data-loaded=\"0\" style=\"border: 0px; width: 600px; display: block;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">不得不说的是，这部剧的 OST 也都很好听，其中由EXO成员灿烈与Punch演唱《Stay With Me》主题曲，更是成为了首支点击率破两亿的韩剧OST MV，同时也是首支点击量破亿的韩剧OST的mv，值得祝贺！</span></p><p><img class=\"normal\" width=\"521px\" data-loadfunc=\"0\" src=\"https://pics3.baidu.com/feed/d8f9d72a6059252d6ab2e38a6f9f6e3d5ab5b9a6.jpeg?token=4013ac6fb94aa110c34b23f42f3b5922\" data-loaded=\"0\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">韩国女歌手Punch在2014年出道，同年与Crush合唱电视剧《没关系是爱情啊》OST《无法入睡的夜》，她纯净又清亮的歌声，立刻捉住听众的耳朵。2016年，与EXO CHEN合唱《太阳的后裔》OST《Everytime》，不仅称霸所有韩国音源榜冠军，知名度大增。她接续为《月之恋人－步步惊心：丽》、《孤单又灿烂的神－鬼怪》等热门韩剧献唱OST，成绩均相当出色，因此被韩国媒体称作“OST妖精”。</span></p><p><img class=\"normal\" width=\"522px\" data-loadfunc=\"0\" src=\"https://pics2.baidu.com/feed/4d086e061d950a7b82b4a24451d50fdff3d3c9bc.jpeg?token=6ec0c81340058320b5c6a5846148ee09\" data-loaded=\"0\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">去年Punch一口气为《德鲁纳酒店》献唱3首OST，《Done For Me》推出后立刻登上韩国音源即时榜冠军，见证她不凡的影响力！不只OST，她还推出过不少冠军单曲，像是《When Night Is Falling》、《Good bye》等。Punch演唱的歌曲特别能引发共鸣，也让人容易进入戏剧的氛围中。出道至今，Punch为14部韩剧演唱过16首OST，数量相当惊人。</span></p><p><img class=\"normal\" width=\"503px\" data-loadfunc=\"0\" src=\"https://pics0.baidu.com/feed/8b13632762d0f7038708ef1953fe3c3b2797c543.jpeg?token=0b113995a122b924c2c05929b0a1b68a\" data-loaded=\"0\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">Punch与EXO灿烈再续“鬼怪之缘”，携手演唱《浪漫医生金师傅2》第3波OST《Go Away Go Away》。歌曲优美的吉他旋律中，包含着金师傅凄凉、依恋等交错的情感。Punch细腻又感性的声线和灿烈强而有力的rap，唱出金师傅坚毅的精神“没错我就像在沙漠盛开的花朵， 即使在风中也不会动摇”以及“你对我而言是战争中，唯一的避难所”石坛医院的伙伴们是他强力的后盾。<span class=\"bjh-br\"></span></span></p><p><img class=\"large\" data-loadfunc=\"0\" src=\"https://pics5.baidu.com/feed/b7003af33a87e950231547e94a3c3e45fbf2b43b.jpeg?token=ff14a180e376b356b9867c1bdd452333&s=7E12658D1C53CFE9489510DB0300C0F2\" data-loaded=\"0\" style=\"border: 0px; width: 600px; display: block;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">超红韩剧《孤单又灿烂的神－鬼怪》不但缔造高收视、好口碑，OST阵容也相当厉害！首波OST《Stay With Me》梦幻的吉他伴奏下，Punch精灵般的歌声与灿烈的磁性低音，仿佛带领大家走进鬼怪的世界。</span></p><p><img class=\"large\" data-loadfunc=\"0\" src=\"https://pics6.baidu.com/feed/6c224f4a20a44623b2b229c2c2261f080cf3d725.jpeg?token=1d925544349c2b28bf6fb6aed4bacb51&s=B6925D8040221AB8F32100F2030080E2\" data-loaded=\"0\" style=\"border: 0px; width: 600px; display: block;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">歌词“你真的是我的命运吗？”更让剧迷对鬼怪这个角色充满幻想。《Stay With Me》推出不到1年MV便突破1亿次点击率，成为韩国史上首个在YouTube破亿的OST。该曲发行至今4年热度依然不减，旋律响起时，剧中感受过的情感一次涌现。</span></p><p><img class=\"large\" data-loadfunc=\"0\" src=\"https://pics2.baidu.com/feed/eaf81a4c510fd9f99a485b3d7c29b92c2834a415.jpeg?token=76d86fb0672ae6649ecd99fdfc8429b7\" data-loaded=\"0\" style=\"border: 0px; width: 600px; display: block;\"/></p><p><br/></p>',3,1),(4,0,'2020-03-29 07:41:06.988087','2020-03-31 06:09:26.671927','边伯贤','边伯贤与中饭聊天，“霸道”中饭说韩语吓坏伯贤！这是在吵架吗？',33,'article/2020/03/29/bbx0.jpg',1,'<p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">边伯贤终于找到了微博的密码了！爱丽们“过年”了！最近一段时间，因为YQ的原因，韩国的诸多娱乐产业也受到了很大的影响，不少艺人也是“迎来”了难得的假期。伯贤自然也不例外，这不他终于记起来自己还有一个账户的密码，时隔半年的时间上了一次微博，与中国的粉丝在微博上互动了起来。</span></p><p><img class=\"large\" data-loadfunc=\"0\" src=\"https://pics4.baidu.com/feed/91ef76c6a7efce1b3c540103294a99d8b58f659a.jpeg?token=995131b20caa4124a0439b14705cc962\" data-loaded=\"0\" style=\"border: 0px; width: 600px; display: block;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">要说中国的粉丝可真的不简单！虽然不是每个人都会韩语，但是用上翻译器也要跟哥哥互动。都知道翻译器这个东西能否翻译出真正的意思，完全凭借自己的心情。中国粉丝好好的一句问候竟然在翻译器的加持下，让大家秒变“霸道总裁”！把伯贤吓坏了。</span></p><p><img class=\"normal\" width=\"474px\" data-loadfunc=\"0\" src=\"https://pics3.baidu.com/feed/562c11dfa9ec8a13e736cc7e7918fb89a0ecc026.jpeg?token=8b7b501c5e57668f5e32335c2c8c2488&s=A1239218006340A425047EDA030030BE\" data-loaded=\"0\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">在伯贤与粉丝的互动中，粉丝的意思明明是：“宝贝，想你了，请照顾好自己，我们都很好！”但是翻译器翻译出来意思可就不是那么回事儿了！“宝宝，想你了，管好你自己吧，我们都很棒！”</span></p><p><img class=\"normal\" width=\"488px\" data-loadfunc=\"0\" src=\"https://pics7.baidu.com/feed/14ce36d3d539b6008ac286106c4b5f2cc65cb72f.jpeg?token=add8f59d52ab9c367594f833529bdb27\" data-loaded=\"0\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">这个“管好你自己吧”简直霸道到没话说。伯贤还回应道：“是因为韩语比较生疏吗？奇怪的感觉心脏kuk kuk的呢！能力者们求翻译啊！”看，这么强势的语气还把伯贤给“吓到了”！</span></p><p><img class=\"normal\" width=\"477px\" data-loadfunc=\"0\" src=\"https://pics5.baidu.com/feed/242dd42a2834349bd259cfb44cf17fc836d3be42.jpeg?token=0c9f0138008fb43c0eb51c31bb92c85d\" data-loaded=\"0\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">这还不够，还有的粉丝留言到：“不要让我们担心，戴好口罩！”听听这霸道的口气，是不是有一种一边嗤之以鼻一边“冷笑着说”的感觉呢？不知道还以为边伯贤与粉丝在吵架呢</span></p><p><img class=\"normal\" width=\"508px\" data-loadfunc=\"0\" src=\"https://pics2.baidu.com/feed/42166d224f4a20a4dc95b9301649f224730ed064.jpeg?token=527ddab1316178f729d9092cede43a74\" data-loaded=\"0\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">不过这都是翻译器的锅啊！粉丝们明明是非常“和蔼可亲”的，翻译器的操作实在太多。伯贤明明在微博上问大家是否吃饭的时候，粉丝们用翻译器的结果却是：“我也抓来吃了！”、“抓来吃了，你呢？”各位粉丝，这是要把伯贤“抓来吃了”吗？</span></p><p><img class=\"normal\" width=\"506px\" data-loadfunc=\"0\" src=\"https://pics3.baidu.com/feed/0df431adcbef7609d5864a9ca8c6c9ca7dd99ec2.jpeg?token=9d4b6a1942b5fb68caf9b4d80f3dbf9a\" data-loaded=\"0\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">这也难怪伯贤会被吓到了吧！不过话说回来，毕竟不是所有粉丝都会韩语，翻译器就是一个没有感情的翻译机器，翻译不出来爱豆与粉丝之间的心情。</span></p><p><img class=\"large\" data-loadfunc=\"0\" src=\"https://pics4.baidu.com/feed/b03533fa828ba61e8194644ec42ffd0c304e597e.jpeg?token=428dd231c07b933580ce970fdd08f8a5&s=54507089C432059CC92579B20300A094\" data-loaded=\"0\" style=\"border: 0px; width: 600px; display: block;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">虽然有翻译器的乌龙事件，但是能够看到伯贤上微博与中国的粉丝们互动，对于大家来讲还是一件很高兴的事情，毕竟找到密码和账号对于伯贤来讲也不是一件容易的事情。</span></p><p style=\"margin-top: 22px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">伯贤一直都是很宠粉丝的，在与中国粉丝互动的时候，也很贴心地用上了中国EXO粉丝特有的称呼“Cherries”。这个名字是“中国China+爱丽Erry”最后结合产生的名字。可能不是伯贤说，中国爱丽还不知道叫自己原来叫小樱桃吧！好喜欢这个代称，超级可爱有没有？</span></p><p><img class=\"normal\" width=\"496px\" data-loadfunc=\"0\" src=\"https://pics7.baidu.com/feed/e824b899a9014c08a6237b358c60680e7bf4f42c.jpeg?token=31e272352d20be99e2560fc69835fc6f\" data-loaded=\"0\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">其实每个地区的爱丽们都有着自己特有的称呼，这些伯贤都记在了心中，中国粉丝是小樱桃。来看看别的国家的爱丽的代称是什么呢？韩国粉丝是爱丽、日本粉丝是jarries、美国粉丝是美丽。</span></p><p><img class=\"normal\" width=\"499px\" data-loadfunc=\"0\" src=\"https://pics3.baidu.com/feed/8694a4c27d1ed21b6b746d012375b7c250da3fb2.jpeg?token=fd71f0f8647692417f566cc7b0c28cf2\" data-loaded=\"0\" style=\"border: 0px; display: block; margin: 0px auto;\"/></p><p style=\"margin-top: 26px; margin-bottom: 0px; padding: 0px; line-height: 24px; color: rgb(51, 51, 51); text-align: justify; font-family: arial; white-space: normal; background-color: rgb(255, 255, 255);\"><span class=\"bjh-p\" style=\"display: block;\">这么贴心的举动，也让中国粉丝们的心里暖暖的。小编我太喜欢小樱桃这个称号了，粉丝们在昵称里加上小樱桃的emoji吧！这样一看就知道是自家人。</span></p><p><br/></p>',2,1),(5,0,'2020-03-29 07:49:35.091242','2020-04-01 07:24:36.847983','烊','看了《这！就是街舞》，才发现易烊千玺这么会穿！',81,'article/2020/03/29/yyqx4_9G1pWaR.jpg',1,'<p style=\"text-align: center;\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180503/e44ac65007ad4eb09e60da03defaef40.gif\"/></p><p><span style=\"background-color: rgb(255, 255, 255); color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif;\">他在节目里是怎样的存在？</span><br/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">大概就是镜头只要切到他，舞池下面立马就传来一阵迷妹的尖叫。<span style=\"border: 0px; margin: 0px; padding: 0px;\">据说因为他，观众的平均年龄都小了不少，成为现在00后最爱的综艺之一</span></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">什么叫“猝不及防再来个侧颜杀”</span></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180503/3228c525e69046768f409f0924965993.jpeg\" style=\"max-width: 100%; border: 0px; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">总而言之，每一期看完都想对易烊千玺说：撩妹无罪，请来的更猛烈些！！</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">当然除了颜值，四字弟弟在节目里还变着花样儿地演绎街舞style，俨然是把一整季的节目当作个人大型时装秀～</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180503/ca02df3844a74f499348b115db8b7064.jpeg\" style=\"max-width: 100%; border: 0px; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">Look 1:</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">一身红衣</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">首播的队长大秀，千玺刚上场就是狂拽酷炫的一身红衣，挥着球棒气势拽上天！</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img width=\"100%\" src=\"http://5b0988e595225.cdn.sohucs.com/images/20180503/8b0f9949fa624da59c2340cfe421a807.gif\" style=\"max-width: 100%; border: 0px; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\">这身<span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">look</span>来自国内的设计师品牌<span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">Angel Chen</span></span>，据说同款在播出后秒速售罄。相较于秀场发布一丝不苟的造型，千玺将内搭换成了颜色对比度更高的白色卫衣，外套也穿成了他擅长的Oversized风。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img width=\"100%\" src=\"http://5b0988e595225.cdn.sohucs.com/images/20180503/ba0f356b5a1440e78f6a63037b3071da.jpeg\" style=\"max-width: 100%; border: 0px; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">至于发型，你没看错，就是叛逆小脏辫。搭配<span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">Louis Vuitton X Supreme</span></span>联名方巾做成的发带，把他有棱有角的五官衬托地更加分明。</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; white-space: normal; background-color: rgb(255, 255, 255);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180503/4e3ab2aec3ea413ebd93bc702d930adb.jpeg\" style=\"max-width: 100%; border: 0px; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">街头牛仔</span></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">海选第二期，不穿Angel Chen的千玺改穿了<span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">Miharayasuhiro三原康裕</span>，一个更拽的日系潮牌。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">千玺是如何消化这套Miharayasuhiro秀场上连模特都穿出“宽荧幕”效果的Look呢？解开牛仔外套的扣子，将搭配的牛仔裤换成紧身款，条纹衬衫下摆塞进裤子，再搭上一双马丁靴，原本有些呆板的秀场Look被他分分钟改造成不羁的街头牛仔风～</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180503/2acb7fbc0c034b02816b4a50d1324a8b.jpeg\" style=\"max-width: 100%; border: 0px; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">学生党怎样把校服款的运动装穿出时髦感？千玺老师造型室包教包会！</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180503/1a2aa850cd2a4e9c80e2b5ce6db20971.jpeg\" style=\"max-width: 100%; border: 0px; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">明明是乖乖的把拉链拉到底，怎么人家穿起来就可以<span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">这么酷？这么拽？</span>明明是你妈觉得你冷才逼你用袜子套住裤腿，怎么他穿就这么时髦？</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180503/66ede910a9ab4c34b47370aa1fb849a5.jpeg\" style=\"max-width: 100%; border: 0px; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180503/9408bea2dd8e4a52b5f388a715c5167a.jpeg\" style=\"max-width: 100%; border: 0px; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255); text-align: right;\"><span style=\"border: 0px; margin: 0px; padding: 0px;\">（感受一下千玺蹲</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">就连掀刘海儿这么尴尬的事儿，易烊千玺都能凭借过硬的颜值化解掉。扎起苹果头，也是可爱到无法无天了！</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180503/23037d7baaba4e679a3e526e0fb4d0a0.gif\" style=\"max-width: 100%; border: 0px; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"border: 0px; margin: 0px; padding: 0px;\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">Look 7:</span></span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">花呢大衣</span></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">这一套斜纹软呢大衣，不知道的还以为是Chanel，但它其实来自一个先锋潮牌<span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px;\">Faith Connexion</span>。不仅侃爷，Jay-Z，Rihanna都在穿，千玺也曾多次上身该品牌。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180503/2b53e6d1d9344759a9daf01dcef260d5.jpeg\" style=\"max-width: 100%; border: 0px; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">Faith Connexion最大的特点就是又乖又痞，很适合易烊千玺这样有隐藏魅力的人。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img width=\"100%\" src=\"http://5b0988e595225.cdn.sohucs.com/images/20180503/672113ba09594216a10ae479efcd620b.gif\" style=\"max-width: 100%; border: 0px; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\">这件大衣，既有香家的优雅气质，又充满随性不羁。搭配高领衫，马丁靴，破洞裤，叠戴项链，瞬间就气场爆棚了。</p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180503/6c4019bccfe246ff964c03a941781091.jpeg\" style=\"max-width: 100%; border: 0px; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p style=\"margin-top: 0.63em; margin-bottom: 1.8em; white-space: normal; border: 0px; padding: 0px; counter-reset: list-1 0 list-2 0 list-3 0 list-4 0 list-5 0 list-6 0 list-7 0 list-8 0 list-9 0; color: rgb(25, 25, 25); font-family: &quot;PingFang SC&quot;, Arial, 微软雅黑, 宋体, simsun, sans-serif; background-color: rgb(255, 255, 255);\"><img src=\"http://5b0988e595225.cdn.sohucs.com/images/20180503/cc7e5716cfc04b7d899c1a5122d2e0c6.jpeg\" style=\"max-width: 100%; border: 0px; margin: 10px auto 0px; padding: 0px; display: block; height: auto;\"/></p><p><br style=\"white-space: normal;\"/></p><p><br style=\"white-space: normal;\"/></p><p><br style=\"white-space: normal;\"/></p><p><br/></p>',4,1);
/*!40000 ALTER TABLE `app_article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_article_tag`
--

DROP TABLE IF EXISTS `app_article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_article_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_article_tag_article_id_tag_id_1cab5f61_uniq` (`article_id`,`tag_id`),
  KEY `app_article_tag_tag_id_f35ce6e5_fk_app_tag_id` (`tag_id`),
  CONSTRAINT `app_article_tag_article_id_450af862_fk_app_article_id` FOREIGN KEY (`article_id`) REFERENCES `app_article` (`id`),
  CONSTRAINT `app_article_tag_tag_id_f35ce6e5_fk_app_tag_id` FOREIGN KEY (`tag_id`) REFERENCES `app_tag` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_article_tag`
--

LOCK TABLES `app_article_tag` WRITE;
/*!40000 ALTER TABLE `app_article_tag` DISABLE KEYS */;
INSERT INTO `app_article_tag` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(6,2,2),(7,2,5),(8,2,6),(5,2,8),(9,3,2),(10,3,4),(11,3,5),(12,3,7),(13,4,2),(14,4,4),(15,4,5),(16,4,7),(18,5,2),(19,5,5),(20,5,6),(17,5,8);
/*!40000 ALTER TABLE `app_article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_banner`
--

DROP TABLE IF EXISTS `app_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_banner` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `title` varchar(10) NOT NULL,
  `cover` varchar(100) NOT NULL,
  `link` varchar(200) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_banner`
--

LOCK TABLES `app_banner` WRITE;
/*!40000 ALTER TABLE `app_banner` DISABLE KEYS */;
INSERT INTO `app_banner` VALUES (1,0,'2020-03-29 06:49:18.557043','2020-03-29 06:55:56.961836','千玺','banner/2020/03/29/yyqx0.jpg','https://baike.baidu.com/item/%E6%98%93%E7%83%8A%E5%8D%83%E7%8E%BA/221450',1),(2,0,'2020-03-29 06:49:38.447774','2020-03-29 06:56:29.184562','灿烈','banner/2020/03/29/6.jfif','https://baike.baidu.com/item/%E6%9C%B4%E7%81%BF%E7%83%88/1225236',2),(3,0,'2020-03-29 06:50:07.881785','2020-03-29 06:58:27.451047','IU@李智恩','banner/2020/03/29/1.jfif','https://baike.baidu.com/item/%E6%9D%8E%E7%9F%A5%E6%81%A9/74308',3),(4,0,'2020-03-29 06:57:24.396256','2020-03-29 06:57:24.396256','伯贤','banner/2020/03/29/bbx0.jpg','https://baike.baidu.com/item/%E8%BE%B9%E4%BC%AF%E8%B4%A4/1534849',4),(5,0,'2020-03-29 06:59:49.768176','2020-03-29 06:59:49.768176','允儿','banner/2020/03/29/5.jfif','https://baike.baidu.com/item/%E6%9E%97%E5%85%81%E5%84%BF/6062189',5);
/*!40000 ALTER TABLE `app_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_bloguser`
--

DROP TABLE IF EXISTS `app_bloguser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_bloguser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `phone` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_bloguser`
--

LOCK TABLES `app_bloguser` WRITE;
/*!40000 ALTER TABLE `app_bloguser` DISABLE KEYS */;
INSERT INTO `app_bloguser` VALUES (1,'pbkdf2_sha256$120000$gCS8mHtgcHdk$gr5eHTXtj3VByAlggnl1COKXsXr4ahIPp95BWAPmsQU=','2020-04-01 06:37:58.774152',1,'charry','','','charry@qq.com',1,1,'2020-03-29 06:31:00.876456',''),(7,'pbkdf2_sha256$120000$zzIsGByjEJf8$TwFoR6jMmhHivhkbMT7WqewbD06F4W904DzpY+sCdaY=','2020-04-01 05:21:36.578619',0,'Aharry','','','',0,1,'2020-04-01 05:16:18.838847','18310417044'),(8,'pbkdf2_sha256$120000$j2IDgxy7u01F$u/27wuGZaNLJX1SamFdEYvWx8Pp0R131j0P/mRl146U=','2020-04-01 05:25:34.783001',0,'Aharry1','','','',0,1,'2020-04-01 05:25:27.953972','15296743060');
/*!40000 ALTER TABLE `app_bloguser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_bloguser_groups`
--

DROP TABLE IF EXISTS `app_bloguser_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_bloguser_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_bloguser_groups_bloguser_id_group_id_c3e989ed_uniq` (`bloguser_id`,`group_id`),
  KEY `app_bloguser_groups_group_id_db218198_fk_auth_group_id` (`group_id`),
  CONSTRAINT `app_bloguser_groups_bloguser_id_ba318f69_fk_app_bloguser_id` FOREIGN KEY (`bloguser_id`) REFERENCES `app_bloguser` (`id`),
  CONSTRAINT `app_bloguser_groups_group_id_db218198_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_bloguser_groups`
--

LOCK TABLES `app_bloguser_groups` WRITE;
/*!40000 ALTER TABLE `app_bloguser_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_bloguser_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_bloguser_user_permissions`
--

DROP TABLE IF EXISTS `app_bloguser_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_bloguser_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bloguser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `app_bloguser_user_permis_bloguser_id_permission_i_395600d9_uniq` (`bloguser_id`,`permission_id`),
  KEY `app_bloguser_user_pe_permission_id_cb2b2d63_fk_auth_perm` (`permission_id`),
  CONSTRAINT `app_bloguser_user_pe_bloguser_id_fd5bcb67_fk_app_blogu` FOREIGN KEY (`bloguser_id`) REFERENCES `app_bloguser` (`id`),
  CONSTRAINT `app_bloguser_user_pe_permission_id_cb2b2d63_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_bloguser_user_permissions`
--

LOCK TABLES `app_bloguser_user_permissions` WRITE;
/*!40000 ALTER TABLE `app_bloguser_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_bloguser_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_category`
--

DROP TABLE IF EXISTS `app_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `name` varchar(10) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_category`
--

LOCK TABLES `app_category` WRITE;
/*!40000 ALTER TABLE `app_category` DISABLE KEYS */;
INSERT INTO `app_category` VALUES (1,0,'2020-03-29 06:33:58.536802','2020-03-29 06:33:58.536802','IU',1),(2,0,'2020-03-29 06:34:11.463145','2020-03-29 06:34:11.463145','边伯贤',2),(3,0,'2020-03-29 06:34:20.774450','2020-03-29 06:34:20.774450','朴灿烈',3),(4,0,'2020-03-29 06:34:30.547513','2020-03-29 06:34:30.547513','易烊千玺',4),(5,0,'2020-03-29 06:34:52.489995','2020-03-29 06:34:52.490996','林允儿',5);
/*!40000 ALTER TABLE `app_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_comment`
--

DROP TABLE IF EXISTS `app_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `content` varchar(255) NOT NULL,
  `article_id` int(11) NOT NULL,
  `users_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_comment_article_id_c87ecbda_fk_app_article_id` (`article_id`),
  KEY `app_comment_users_id_2e0a2c34_fk_app_bloguser_id` (`users_id`),
  CONSTRAINT `app_comment_article_id_c87ecbda_fk_app_article_id` FOREIGN KEY (`article_id`) REFERENCES `app_article` (`id`),
  CONSTRAINT `app_comment_users_id_2e0a2c34_fk_app_bloguser_id` FOREIGN KEY (`users_id`) REFERENCES `app_bloguser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_comment`
--

LOCK TABLES `app_comment` WRITE;
/*!40000 ALTER TABLE `app_comment` DISABLE KEYS */;
INSERT INTO `app_comment` VALUES (1,0,'2020-03-29 06:45:25.397794','2020-03-29 06:45:25.397794','I   LOVE   YOU   ！！！ ——   IU',1,1),(2,0,'2020-03-29 08:11:55.738333','2020-03-29 08:11:55.738333','#易烊千玺#    他在节目里是怎样的存在？  大概就是镜头只要切到他，舞池下面立马就传来一阵迷妹的尖叫。据说因为他，观众的平均年龄都小了不少，成为现在00后最爱的综艺之一。  作为“易燃装置”的队长，易烊千玺在节目里完美诠释了什么叫“随手跳个舞都很帅”！    什么叫“娇羞一笑，酥到你全身瘫软”      什么叫“猝不及防再来个侧颜杀”    总而言之，每一期看完都想对易烊千玺说：撩妹无罪，请来的更猛烈些！！  当然除了颜值，四字弟弟在节目里还变着花样儿地演绎街舞style，俨然是把一整季的节目当作个人',5,1),(3,0,'2020-03-29 08:13:08.697027','2020-03-29 08:13:08.697027','世界上所有的偶像都不是最完美的 但是所有的偶像在粉丝心中却是最完美的 朴灿烈 当我们的心里各种想法各种情绪在动摇时 你都会一直安静的在哪里 因为我不会让我的整个世界动摇 你的眼睛很美 所以不适合流泪 我会尽我最大的能力不让你皱眉 亲故本命是灿烈吗 ？？希望一直好好爱他 你加油 我也加油 EXO-L',3,1),(4,0,'2020-03-29 08:14:24.786598','2020-03-29 08:14:24.786598','他七年的努力和付出得到了认可 他付出的血汗没有辜负他 就是这样一个不完美的边伯贤 在以后的日子里都会成为我心里最完美的 边伯贤。 尽管你的开关舞有点儿小抽风 、 　尽管你总被我们吐槽身高185、尽管你的中文。。。 你是被7家公司拒绝却还不放弃的边伯贤； 　你是被火花喷伤眼睛还在坚持的边伯贤； 你是每到一个国家都会学那里的一首歌的边伯贤！ 因为你，才发现原来男生描眼线也可以这么美腻、好看； 因为你，才发现这世界还存在那样无邪的笑容； 因为你，才发现韩文歌是有多好听；',4,1),(5,0,'2020-03-29 08:15:28.834562','2020-03-29 08:15:28.834562','如果有一天朴灿烈婚礼，我会哭的很惨烈，不是因为新娘不是我而伤心，而是看见了在台下默默鼓掌的伯贤。 2用四个字形容一下边伯贤”“ 朴灿烈的” 3灿白夫夫唱起歌来真的好美， 而且， 有别人看不出的默契。 一个用手捂心， 一个用心凝听。 最美不过灿白。 4什么才算相亲相爱？ 就像灿灿对白白说的“你三杯，我六杯”',3,1),(6,0,'2020-03-31 05:51:00.013001','2020-03-31 05:51:00.013001','《这！就是街舞》巨好看！！！集美们快来！！！',5,1),(7,0,'2020-03-31 05:58:51.536111','2020-03-31 05:58:51.536111','手合作的顶级舞者则是这个节目的总教官黄景行，大神都是压轴出场的，黄景行是和韩宇杨文昊齐平的街舞大神而如今更能诠释节目的精神，易燃装置的小p和奶球两人能和黄景行合作也是十分的荣幸，而街舞这个主题元素其实很大很难选择，黄景行和奶球想的是表达对于街舞的一种学习的未知，以及街舞尊重的精神，奶球的压力也是非常的大。',5,1),(8,0,'2020-03-31 05:59:06.530616','2020-03-31 05:59:06.530616','《这！就是街舞》不仅是个比赛也是一个舞台，选手们在这个舞台上绽放着自己的光芒，也留下了汗水与泪水，而节目想要表达的精神也是被选手们纷纷表达了出来，通过语言与肢体无一不在表达街舞人的精神，就连半决赛请来的顶级舞者也纷纷被街舞的精神折服.不同的舞种的舞者对于舞蹈的热爱却是一样的，每个人心中都是抱着对舞蹈的热爱才走上了这个舞台向每个观众展示热情与热爱，所以半决赛赛制最后一个主题甚至是街舞这两个字。',5,1),(9,0,'2020-03-31 05:59:39.871379','2020-03-31 05:59:39.871379','《这就是街舞》给我们带来了太多惊喜和感动，令人震撼的舞蹈，眼花缭乱的舞技，优秀的各路街舞大神，明星队长的点评和发挥都给我们留下了深刻的印象，作为年龄最小的队长，易烊千玺的发挥可圈可点，战队易燃装置成员韩宇更是拿下第一季全国总冠军，在节目最后一期，亮亮的创意舞蹈天马流星拳不敌杨文昊，以较大的分差被淘汰，易烊千玺安慰亮亮，你是站在金字塔顶端的舞者，想来想去，这都是对亮亮最合适的评价',5,1),(10,0,'2020-03-31 06:00:44.463570','2020-03-31 06:00:44.463570','实力，是他对自己演艺事业的一个进步指标。  他按照自己设定的指标慢慢长大，并期待自己能成为一个用实力说话的大人。  诚然，对于大多数“大人”而言，实力依旧是一种奢侈品。  但他依然坚持，打破流量偏见，不靠粉丝买单，用真正的实力出现在荧幕上  那个少年，眼里有星光闪烁',2,1),(11,0,'2020-03-31 06:01:11.765959','2020-03-31 06:01:11.765959','当小孩子看，这是对少年偶像最重的烙印。  有人一直无法跳离，比如曹俊，有人追求流量，比如关晓彤。  每条路都不一样，每条路都很艰险。  但易烊千玺选择了一条更难的路：做一个实力派。',2,1),(12,0,'2020-03-31 06:03:00.089909','2020-03-31 06:03:00.089909','鬼怪是孤独的 永生 歌名的中文意思是与我相随 留下来陪我 可以表明这剧的名字孤独的鬼怪相互应 这剧的内容不就是鬼怪在寻找灵魂伴侣 女主死的时候 怪不是说不要离开我么 一个意思',3,1),(13,0,'2020-03-31 06:06:15.756107','2020-03-31 06:06:15.757104','또 나를 부르네 calling           헤어나올수 없어 제발 hold me               내 인연의 끈이 넌지                기다린 니가 맞는지           가슴이 먼저 왜 내려앉는지           Stay with me           내 안에 숨겨왔던 진실            나의 두 눈을 감으면 若闭上我的双眼 떠오르는 그 눈동자              자꾸 가슴이 시려서 잊혀지길 바랬어 꿈이라면',3,1),(14,0,'2020-03-31 06:09:23.497533','2020-03-31 06:09:23.497533','再好的语言都不足以形容出他的绝色了，从上到下，边先生的嗓子真的是神仙！《City Lights》专辑歌单：《UN Village》、《Stay Up》、《Betcha》、《Ice Queen》 、《Diamond》、《Psycho》',4,1),(15,0,'2020-03-31 06:10:50.462081','2020-03-31 06:10:50.462081','IU代言不断，不愧南韩第一女solo！',1,1),(16,0,'2020-03-31 06:11:48.302729','2020-03-31 06:11:48.302729','怎么会有这么钟灵毓秀的人啊',1,1),(17,0,'2020-04-01 05:54:15.934685','2020-04-01 05:54:15.934685','哈哈',5,1);
/*!40000 ALTER TABLE `app_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_friendlink`
--

DROP TABLE IF EXISTS `app_friendlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_friendlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `name` varchar(255) NOT NULL,
  `link` varchar(200) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_friendlink`
--

LOCK TABLES `app_friendlink` WRITE;
/*!40000 ALTER TABLE `app_friendlink` DISABLE KEYS */;
INSERT INTO `app_friendlink` VALUES (1,0,'2020-03-29 06:37:47.844463','2020-03-29 06:37:47.844463','明星人气榜','https://baike.baidu.com/starrank',1),(2,0,'2020-03-29 07:01:45.651595','2020-03-29 07:01:45.651595','IU','https://baike.baidu.com/item/%E6%9D%8E%E7%9F%A5%E6%81%A9/74308',2),(3,0,'2020-03-29 07:03:30.145938','2020-03-29 07:03:30.145938','易烊千玺','https://baike.baidu.com/item/%E6%98%93%E7%83%8A%E5%8D%83%E7%8E%BA/221450',3),(4,0,'2020-03-29 07:07:43.520489','2020-03-29 07:07:43.520489','朴灿烈','https://baike.baidu.com/item/%E6%9C%B4%E7%81%BF%E7%83%88/1225236',4),(5,0,'2020-03-29 07:08:04.642195','2020-03-29 07:08:04.642195','边伯贤','https://baike.baidu.com/item/%E8%BE%B9%E4%BC%AF%E8%B4%A4/1534849',5),(6,0,'2020-03-29 07:08:39.773763','2020-03-29 07:08:39.773763','林允儿','https://baike.baidu.com/item/%E6%9E%97%E5%85%81%E5%84%BF/6062189',6);
/*!40000 ALTER TABLE `app_friendlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_tag`
--

DROP TABLE IF EXISTS `app_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_delete` tinyint(1) NOT NULL,
  `created_time` datetime(6) NOT NULL,
  `updated_time` datetime(6) NOT NULL,
  `name` varchar(10) NOT NULL,
  `position` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_tag`
--

LOCK TABLES `app_tag` WRITE;
/*!40000 ALTER TABLE `app_tag` DISABLE KEYS */;
INSERT INTO `app_tag` VALUES (1,0,'2020-03-29 06:41:10.077370','2020-03-31 03:42:50.654648','IU',1),(2,0,'2020-03-29 06:41:22.212329','2020-03-31 03:42:53.565829','明星',2),(3,0,'2020-03-29 06:41:33.191663','2020-03-31 03:42:56.192665','美女',3),(4,0,'2020-03-29 06:41:42.416254','2020-03-31 03:42:58.468022','韩国',4),(5,0,'2020-03-29 06:42:31.474685','2020-03-31 03:43:01.723303','帅哥',5),(6,0,'2020-03-29 06:43:04.132449','2020-03-31 03:43:07.468572','中国',6),(7,0,'2020-03-29 06:43:23.910865','2020-03-31 03:43:09.798679','EXO',7),(8,0,'2020-03-29 06:43:39.073493','2020-03-31 03:43:12.297439','易烊千玺',8),(9,0,'2020-03-29 06:43:53.848895','2020-03-31 03:43:14.836485','林允儿',9);
/*!40000 ALTER TABLE `app_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add user',6,'add_bloguser'),(22,'Can change user',6,'change_bloguser'),(23,'Can delete user',6,'delete_bloguser'),(24,'Can view user',6,'view_bloguser'),(25,'Can add 文章',7,'add_article'),(26,'Can change 文章',7,'change_article'),(27,'Can delete 文章',7,'delete_article'),(28,'Can view 文章',7,'view_article'),(29,'Can add 轮播图',8,'add_banner'),(30,'Can change 轮播图',8,'change_banner'),(31,'Can delete 轮播图',8,'delete_banner'),(32,'Can view 轮播图',8,'view_banner'),(33,'Can add 分类',9,'add_category'),(34,'Can change 分类',9,'change_category'),(35,'Can delete 分类',9,'delete_category'),(36,'Can view 分类',9,'view_category'),(37,'Can add 评论',10,'add_comment'),(38,'Can change 评论',10,'change_comment'),(39,'Can delete 评论',10,'delete_comment'),(40,'Can view 评论',10,'view_comment'),(41,'Can add 友情链接',11,'add_friendlink'),(42,'Can change 友情链接',11,'change_friendlink'),(43,'Can delete 友情链接',11,'delete_friendlink'),(44,'Can view 友情链接',11,'view_friendlink'),(45,'Can add 标签',12,'add_tag'),(46,'Can change 标签',12,'change_tag'),(47,'Can delete 标签',12,'delete_tag'),(48,'Can view 标签',12,'view_tag');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_app_bloguser_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_app_bloguser_id` FOREIGN KEY (`user_id`) REFERENCES `app_bloguser` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2020-03-29 06:33:58.537798','1','IU',1,'[{\"added\": {}}]',9,1),(2,'2020-03-29 06:34:11.465143','2','边伯贤',1,'[{\"added\": {}}]',9,1),(3,'2020-03-29 06:34:20.777442','3','朴灿烈',1,'[{\"added\": {}}]',9,1),(4,'2020-03-29 06:34:30.548510','4','易烊千玺',1,'[{\"added\": {}}]',9,1),(5,'2020-03-29 06:34:52.491990','5','林允儿',1,'[{\"added\": {}}]',9,1),(6,'2020-03-29 06:37:47.846457','1','明星人气榜',1,'[{\"added\": {}}]',11,1),(7,'2020-03-29 06:41:10.078398','1','IU',1,'[{\"added\": {}}]',12,1),(8,'2020-03-29 06:41:22.213328','2','明星',1,'[{\"added\": {}}]',12,1),(9,'2020-03-29 06:41:33.192661','3','美女',1,'[{\"added\": {}}]',12,1),(10,'2020-03-29 06:41:42.417252','4','韩国',1,'[{\"added\": {}}]',12,1),(11,'2020-03-29 06:42:04.642058','1','IU@李智恩',1,'[{\"added\": {}}]',7,1),(12,'2020-03-29 06:42:31.475699','5','帅哥',1,'[{\"added\": {}}]',12,1),(13,'2020-03-29 06:43:04.134444','6','中国',1,'[{\"added\": {}}]',12,1),(14,'2020-03-29 06:43:23.911826','7','EXO',1,'[{\"added\": {}}]',12,1),(15,'2020-03-29 06:43:39.075523','8','易烊千玺',1,'[{\"added\": {}}]',12,1),(16,'2020-03-29 06:43:53.849888','9','林允儿',1,'[{\"added\": {}}]',12,1),(17,'2020-03-29 06:45:25.400750','1','I   LOVE   YOU   ！！！ ——   IU',1,'[{\"added\": {}}]',10,1),(18,'2020-03-29 06:49:18.700170','1','千玺',1,'[{\"added\": {}}]',8,1),(19,'2020-03-29 06:49:38.449770','2','灿烈',1,'[{\"added\": {}}]',8,1),(20,'2020-03-29 06:50:07.884738','3','IU@李智恩',1,'[{\"added\": {}}]',8,1),(21,'2020-03-29 06:55:54.665018','1','千玺',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',8,1),(22,'2020-03-29 06:55:56.963831','1','千玺',2,'[]',8,1),(23,'2020-03-29 06:56:29.186595','2','灿烈',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',8,1),(24,'2020-03-29 06:56:34.854835','3','IU@李智恩',2,'[]',8,1),(25,'2020-03-29 06:57:24.398214','4','伯贤',1,'[{\"added\": {}}]',8,1),(26,'2020-03-29 06:58:27.452051','3','IU@李智恩',2,'[{\"changed\": {\"fields\": [\"link\"]}}]',8,1),(27,'2020-03-29 06:59:49.875892','5','允儿',1,'[{\"added\": {}}]',8,1),(28,'2020-03-29 07:01:45.653590','2','IU',1,'[{\"added\": {}}]',11,1),(29,'2020-03-29 07:03:30.146903','3','易烊千玺',1,'[{\"added\": {}}]',11,1),(30,'2020-03-29 07:07:43.522452','4','朴灿烈',1,'[{\"added\": {}}]',11,1),(31,'2020-03-29 07:08:04.644203','5','边伯贤',1,'[{\"added\": {}}]',11,1),(32,'2020-03-29 07:08:39.774757','6','林允儿',1,'[{\"added\": {}}]',11,1),(33,'2020-03-29 07:11:51.673271','1','IU@李智恩',2,'[{\"changed\": {\"fields\": [\"intro\", \"cover\", \"content\"]}}]',7,1),(34,'2020-03-29 07:15:28.983001','2','易烊千玺',1,'[{\"added\": {}}]',7,1),(35,'2020-03-29 07:30:38.759380','3','朴灿烈',1,'[{\"added\": {}}]',7,1),(36,'2020-03-29 07:37:23.047682','3','朴灿烈',2,'[{\"changed\": {\"fields\": [\"intro\", \"content\"]}}]',7,1),(37,'2020-03-29 07:41:07.004011','4','边伯贤',1,'[{\"added\": {}}]',7,1),(38,'2020-03-29 07:41:14.341647','3','朴灿烈',2,'[]',7,1),(39,'2020-03-29 07:41:32.279559','4','边伯贤',2,'[{\"changed\": {\"fields\": [\"cover\"]}}]',7,1),(40,'2020-03-29 07:49:35.096259','5','烊',1,'[{\"added\": {}}]',7,1),(41,'2020-03-29 08:00:02.001665','5','烊',2,'[{\"changed\": {\"fields\": [\"cover\"]}}]',7,1),(42,'2020-03-29 08:03:04.147300','5','烊',2,'[{\"changed\": {\"fields\": [\"cover\", \"content\"]}}]',7,1),(43,'2020-03-29 08:03:33.732468','5','烊',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(44,'2020-03-29 08:04:16.066914','5','烊',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(45,'2020-03-29 08:05:20.566456','5','烊',2,'[{\"changed\": {\"fields\": [\"content\"]}}]',7,1),(46,'2020-03-29 08:07:03.375225','5','烊',2,'[]',7,1),(47,'2020-03-29 08:08:38.766344','5','烊',2,'[{\"changed\": {\"fields\": [\"is_top\"]}}]',7,1),(48,'2020-03-29 08:11:55.753257','2','#易烊千玺#    他在节目里是怎样的存在？  大概就是镜头只要切到他，舞池下面立马就传来一阵迷妹的尖叫。据说因为他，观众的平均年龄都小了不少，成为现在00后最爱的综艺之一。  作为“易燃装置”的队长，易烊千玺在节目里完美诠释了什么叫“随手跳个舞都很帅”！    什么叫“娇羞一笑，酥到你全身瘫软”      什么叫“猝不及防再来个侧颜杀”    总而言之，每一期看完都想对易烊千玺说：撩妹无罪，请来',1,'[{\"added\": {}}]',10,1),(49,'2020-03-29 08:13:08.698011','3','世界上所有的偶像都不是最完美的 但是所有的偶像在粉丝心中却是最完美的 朴灿烈 当我们的心里各种想法各种情绪在动摇时 你都会一直安静的在哪里 因为我不会让我的整个世界动摇 你的眼睛很美 所以不适合流泪 我会尽我最大的能力不让你皱眉 亲故本命是灿烈吗 ？？希望一直好好爱他 你加油 我也加油 EXO-L',1,'[{\"added\": {}}]',10,1),(50,'2020-03-29 08:14:24.788596','4','他七年的努力和付出得到了认可 他付出的血汗没有辜负他 就是这样一个不完美的边伯贤 在以后的日子里都会成为我心里最完美的 边伯贤。 尽管你的开关舞有点儿小抽风 、 　尽管你总被我们吐槽身高185、尽管你的中文。。。 你是被7家公司拒绝却还不放弃的边伯贤； 　你是被火花喷伤眼睛还在坚持的边伯贤； 你是每到一个国家都会学那里的一首歌的边伯贤！ 因为你，才发现原来男生描眼线也可以这么美腻、好看； 因为你，',1,'[{\"added\": {}}]',10,1),(51,'2020-03-29 08:15:28.835557','5','如果有一天朴灿烈婚礼，我会哭的很惨烈，不是因为新娘不是我而伤心，而是看见了在台下默默鼓掌的伯贤。 2用四个字形容一下边伯贤”“ 朴灿烈的” 3灿白夫夫唱起歌来真的好美， 而且， 有别人看不出的默契。 一个用手捂心， 一个用心凝听。 最美不过灿白。 4什么才算相亲相爱？ 就像灿灿对白白说的“你三杯，我六杯”',1,'[{\"added\": {}}]',10,1),(52,'2020-03-29 08:19:57.997072','4','边伯贤',2,'[]',7,1),(53,'2020-03-31 03:42:50.657639','1','IU',2,'[]',12,1),(54,'2020-03-31 03:42:53.567881','2','明星',2,'[]',12,1),(55,'2020-03-31 03:42:56.193660','3','美女',2,'[]',12,1),(56,'2020-03-31 03:42:58.469020','4','韩国',2,'[]',12,1),(57,'2020-03-31 03:43:01.726297','5','帅哥',2,'[]',12,1),(58,'2020-03-31 03:43:04.364830','6','中国',2,'[]',12,1),(59,'2020-03-31 03:43:07.470567','6','中国',2,'[]',12,1),(60,'2020-03-31 03:43:09.800676','7','EXO',2,'[]',12,1),(61,'2020-03-31 03:43:12.300429','8','易烊千玺',2,'[]',12,1),(62,'2020-03-31 03:43:14.839492','9','林允儿',2,'[]',12,1),(63,'2020-03-31 03:44:00.393798','5','烊',2,'[]',7,1),(64,'2020-03-31 03:44:10.851774','4','边伯贤',2,'[]',7,1),(65,'2020-03-31 03:44:17.894239','3','朴灿烈',2,'[]',7,1),(66,'2020-03-31 03:44:33.245779','2','易烊千玺',2,'[]',7,1),(67,'2020-03-31 03:44:47.211324','1','IU@李智恩',2,'[]',7,1),(68,'2020-03-31 05:51:00.016976','6','《这！就是街舞》巨好看！！！集美们快来！！！',1,'[{\"added\": {}}]',10,1),(69,'2020-03-31 05:58:51.537110','7','手合作的顶级舞者则是这个节目的总教官黄景行，大神都是压轴出场的，黄景行是和韩宇杨文昊齐平的街舞大神而如今更能诠释节目的精神，易燃装置的小p和奶球两人能和黄景行合作也是十分的荣幸，而街舞这个主题元素其实很大很难选择，黄景行和奶球想的是表达对于街舞的一种学习的未知，以及街舞尊重的精神，奶球的压力也是非常的大。',1,'[{\"added\": {}}]',10,1),(70,'2020-03-31 05:59:06.531611','8','《这！就是街舞》不仅是个比赛也是一个舞台，选手们在这个舞台上绽放着自己的光芒，也留下了汗水与泪水，而节目想要表达的精神也是被选手们纷纷表达了出来，通过语言与肢体无一不在表达街舞人的精神，就连半决赛请来的顶级舞者也纷纷被街舞的精神折服.不同的舞种的舞者对于舞蹈的热爱却是一样的，每个人心中都是抱着对舞蹈的热爱才走上了这个舞台向每个观众展示热情与热爱，所以半决赛赛制最后一个主题甚至是街舞这两个字。',1,'[{\"added\": {}}]',10,1),(71,'2020-03-31 05:59:39.872377','9','《这就是街舞》给我们带来了太多惊喜和感动，令人震撼的舞蹈，眼花缭乱的舞技，优秀的各路街舞大神，明星队长的点评和发挥都给我们留下了深刻的印象，作为年龄最小的队长，易烊千玺的发挥可圈可点，战队易燃装置成员韩宇更是拿下第一季全国总冠军，在节目最后一期，亮亮的创意舞蹈天马流星拳不敌杨文昊，以较大的分差被淘汰，易烊千玺安慰亮亮，你是站在金字塔顶端的舞者，想来想去，这都是对亮亮最合适的评价',1,'[{\"added\": {}}]',10,1),(72,'2020-03-31 06:00:44.465591','10','实力，是他对自己演艺事业的一个进步指标。  他按照自己设定的指标慢慢长大，并期待自己能成为一个用实力说话的大人。  诚然，对于大多数“大人”而言，实力依旧是一种奢侈品。  但他依然坚持，打破流量偏见，不靠粉丝买单，用真正的实力出现在荧幕上  那个少年，眼里有星光闪烁',1,'[{\"added\": {}}]',10,1),(73,'2020-03-31 06:01:11.766925','11','当小孩子看，这是对少年偶像最重的烙印。  有人一直无法跳离，比如曹俊，有人追求流量，比如关晓彤。  每条路都不一样，每条路都很艰险。  但易烊千玺选择了一条更难的路：做一个实力派。',1,'[{\"added\": {}}]',10,1),(74,'2020-03-31 06:03:00.090907','12','鬼怪是孤独的 永生 歌名的中文意思是与我相随 留下来陪我 可以表明这剧的名字孤独的鬼怪相互应 这剧的内容不就是鬼怪在寻找灵魂伴侣 女主死的时候 怪不是说不要离开我么 一个意思',1,'[{\"added\": {}}]',10,1),(75,'2020-03-31 06:06:15.757104','13','또 나를 부르네 calling           헤어나올수 없어 제발 hold me               내 인연의 끈이 넌지                기다린 니가 맞는지           가슴이 먼저 왜 내려앉는지           Stay with me           내 안에 숨겨왔던 진실            나의 두 눈을 감으면 若闭上我的双眼',1,'[{\"added\": {}}]',10,1),(76,'2020-03-31 06:09:23.506471','14','再好的语言都不足以形容出他的绝色了，从上到下，边先生的嗓子真的是神仙！《City Lights》专辑歌单：《UN Village》、《Stay Up》、《Betcha》、《Ice Queen》 、《Diamond》、《Psycho》',1,'[{\"added\": {}}]',10,1),(77,'2020-03-31 06:10:50.463072','15','IU代言不断，不愧南韩第一女solo！',1,'[{\"added\": {}}]',10,1),(78,'2020-03-31 06:11:48.303711','16','怎么会有这么钟灵毓秀的人啊',1,'[{\"added\": {}}]',10,1),(79,'2020-04-01 06:05:33.469440','18',' ',3,'',10,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(7,'app','article'),(8,'app','banner'),(6,'app','bloguser'),(9,'app','category'),(10,'app','comment'),(11,'app','friendlink'),(12,'app','tag'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2020-03-29 06:29:29.501765'),(2,'contenttypes','0002_remove_content_type_name','2020-03-29 06:29:29.612469'),(3,'auth','0001_initial','2020-03-29 06:29:29.844823'),(4,'auth','0002_alter_permission_name_max_length','2020-03-29 06:29:29.884716'),(5,'auth','0003_alter_user_email_max_length','2020-03-29 06:29:29.891698'),(6,'auth','0004_alter_user_username_opts','2020-03-29 06:29:29.898710'),(7,'auth','0005_alter_user_last_login_null','2020-03-29 06:29:29.906658'),(8,'auth','0006_require_contenttypes_0002','2020-03-29 06:29:29.909651'),(9,'auth','0007_alter_validators_add_error_messages','2020-03-29 06:29:29.916631'),(10,'auth','0008_alter_user_username_max_length','2020-03-29 06:29:29.924610'),(11,'auth','0009_alter_user_last_name_max_length','2020-03-29 06:29:29.932589'),(12,'app','0001_initial','2020-03-29 06:29:30.194721'),(13,'admin','0001_initial','2020-03-29 06:29:30.314912'),(14,'admin','0002_logentry_remove_auto_add','2020-03-29 06:29:30.324885'),(15,'admin','0003_logentry_add_action_flag_choices','2020-03-29 06:29:30.334859'),(16,'app','0002_auto_20200326_2157','2020-03-29 06:29:30.891370'),(17,'app','0003_auto_20200329_1429','2020-03-29 06:29:30.921290'),(18,'sessions','0001_initial','2020-03-29 06:29:30.960187'),(19,'app','0004_auto_20200401_1305','2020-04-01 05:05:23.551732'),(20,'app','0005_auto_20200401_1305','2020-04-01 05:05:33.604835');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('ypg4c769yhtrd0u88ugtmbjftdxpy29g','Yjg1NDI1NGQwNzNhM2U2YWQzOTYyZDdjMDVkNzhhMWIwY2RiM2FhYTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiIyNmIxODFhNjY1ZjcxYzYyYzJmOWRkM2QxMWIyZjc5OTA1MzY5ZTM5In0=','2020-04-15 06:37:58.781166');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-02 11:12:51
