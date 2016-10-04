-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2016-10-03 23:49:12
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- 表的结构 `guest`
--

CREATE TABLE `guest` (
  `name` varchar(20) NOT NULL COMMENT '游客姓名',
  `email` varchar(50) NOT NULL COMMENT '电子邮箱',
  `comment_content` text NOT NULL COMMENT '评论内容',
  `comment_time` datetime NOT NULL COMMENT '评论时间',
  `pc_id` int(10) UNSIGNED NOT NULL COMMENT '评论文章ID',
  `guest_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `guest`
--

INSERT INTO `guest` (`name`, `email`, `comment_content`, `comment_time`, `pc_id`, `guest_id`) VALUES
('小一', '123@qq.com', '好大的华农啊！', '2016-10-01 12:01:54', 14, 1),
('小2', '234@qq.com', '你可尝过华农酸奶？', '2016-10-01 15:14:41', 14, 2),
('小3', '456@qq.com', '你可曾知道华农酸奶的魅力？', '2016-10-02 14:29:32', 12, 3),
('风吹草低见牛羊', 'hijfurh@163.com', '有点太乐观了。', '2016-10-04 07:45:08', 17, 18),
('yujiahao', '767954505@qq.com', '11111111111111111', '2016-10-03 14:23:24', 14, 4),
('yujiahaol68', '767954505@qq.com', '你可尝过华农酸奶的魅力？', '2016-10-03 15:57:00', 14, 5),
('郑圳辉', 'manongZZH@qq.com', '2天没打码了好罪恶!!', '2016-10-03 16:03:00', 15, 6),
('周骏腾', 'zjt@163.com', '我是水王谁都怕我！', '2016-10-03 16:09:35', 13, 7),
('yujiahaol68', '123@qq.com', '我是后端开发的程序员！', '2016-10-03 16:19:57', 13, 8);

-- --------------------------------------------------------

--
-- 表的结构 `page`
--

CREATE TABLE `page` (
  `passage_id` int(10) UNSIGNED NOT NULL COMMENT '文章ID',
  `p_content` text NOT NULL COMMENT '文章内容',
  `p_title` text NOT NULL COMMENT '文章标题',
  `pub_time` datetime NOT NULL COMMENT '文章发布时间',
  `writer` varchar(20) NOT NULL COMMENT '作者',
  `description` text NOT NULL COMMENT '描述',
  `comment_count` int(10) UNSIGNED NOT NULL DEFAULT '0' COMMENT '评论数'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `page`
--

INSERT INTO `page` (`passage_id`, `p_content`, `p_title`, `pub_time`, `writer`, `description`, `comment_count`) VALUES
(1, '有鉴于在之前全球召回Note7，三星为了打消内地用户的疑虑，之前专门在中国官网发出声明称国行Note7搜采用的电池厂商为ATL，并没有起火隐患，更是在今天称不召回Note7国行并非在中国搞“双重标准”，三星还表示，目前Note7检测结果均显示，烧损的部位并非在电池区域，电池内部也未发现明显破损的痕迹，推定系外部热冲击导致的手机燃损。也将报备政府有关部门并及时公开相关检测结果。\r\nIT之家注意到，在三星发布该声明之后，Note7起火事件亲历者今晚表示，对于三星这项声明表示遗憾，因为此事饱受失眠困扰：\r\n9月26日晨6时11分，我拿起三星Note7手机欣赏oled屏幕呈现的熄屏全黑背景下仍显示的精致待机文字。', '国行Note7起火用户不满三星声明：将重新进行中立检测', '2016-09-29 10:27:11', '仲平', '有鉴于在之前全球召回Note7，三星为了打消内地用户的疑虑，之前专门在中国官网发出声明称国行Note7搜采用的电池厂商为ATL，并没有起火隐患，更是在今天称不召回Note7国行', 0),
(3, '  9月29日晚间消息，来自KGI的分析师郭明池最近给出了对2017年iPhone产品线的一些预测，他认为明年的iPhone8将采用双面玻璃+金属中框的设计，其中内存较高版本的设备将采用不锈钢中框。\r\n  郭明池称尽管苹果iPhone7亮黑配色仅限于128GB和256GB存储版本，然而该配色还是占绝了订单总量的35%。他认为苹果公司将在2017年产品线中更加明显地区分iPhone不同存储版本，这将通过采用不同材质的金属框架来实现。\r\n  郭明池表示：“全玻璃机身目前技术上仍有瓶颈，因此金属中框目前来看是必须加入的设计元素。不锈钢相较于铝拥有更好的外观，同时制造成本更高，我们预计明年的高端iPhone产品线将配备不锈钢框架。”', '苹果iPhone8/Plus高端版本将采用不锈钢中框', '2016-09-29 23:26:32', '书生', '9月29日晚间消息，来自KGI的分析师郭明池最近给出了对2017年iPhone产品线的一些预测，他认为明年的iPhone8将采用双面玻璃+金属中框的设计，其中内存较高版本的设备将采用不锈钢中框。', 0),
(4, '2016年巴黎车展今日在凡尔赛门展览中心举行，梅赛德斯-奔驰（Mercedes-Benz）发布了标榜“电动智能（Electric Intelligence）”的全新电动SUV Generation EQ概念车，官方还为此次展览打造了极具电动化风格的展台。 \r\n今年8月，戴姆勒股份公司（Daimler AG）提交了旗下纯电动车子品牌的商标注册申请，新品牌将命名为梅赛德斯-奔驰EQ。新品牌初步的产品规划包含了2款纯电动 SUV及2款纯电动三厢轿车，Generation EQ便是其中之一。\r\nGeneration EQ 概念车基于成熟电动车架构进行设计，是一款流线型、全轮驱动及全电动SUV，采用模块化设计（类似于特斯拉）。目前这个设计架构同样适用于奔驰旗下其他车型的开发。\r\n该车紧跟时下潮流，用摄像头取代了两侧后视镜，门把手和雨刮器都被隐藏，按照空气动力学塑形。“这款车颠覆了奔驰的设计哲学，目的是让其更加具备电动化的外表（Electrolook）”，戴姆勒设计总监Gorden Wagener解释道。\r\n车内中控系统用极宽的24英寸液晶显示屏取代了传统的仪表盘，方向盘的三根辐条上有两根上安装有OLED触摸屏，驾驶员可用手指点击菜单控制车辆。奔驰官方表示，Generation EQ已经很接近生产，但是并未透露具体量产时间。\r\n梅赛德斯·奔驰方面并不只想展示这款概念车，同时也想让其全新的EQ品牌所倡导的电动车生态系统（Electric Mobility Ecosystem）为大家所知。该生态旨在用“产品、服务、科技以及创新”来扩大并优化驾驶体验。\r\n奔驰在充电解决方案的选择和途径方面也进行了很多探索，比如有支持家庭充电的单元；同时，在驱动变革方面，采用了两枚电动发动机，分别驱动两根轮轴，可产生 300kW的动力；单次充电续航里程达到500km（310英里）。电池模组全都融入到车辆的底盘。并且还设想了快充解决方案，比如5分钟充电可以行使100英里。这款概念车从0-60mph加速只需5秒。\r\n戴姆勒CEO Dieter Zetsche称，“未来的奔驰车将包含4大特性：连接、自动化、共享和电动化，Generation EQ便是4大特征的完美融合。”\r\n在自动化方面，Generation EQ将采用地图生产商HERE提供的高精度地图信息，可以知道道路的曲率、精确位置和交叉路口，并能自动调整车速和动力，驾驶员的体验将更加舒适和轻松。奔驰方面希望朝传感器融合（Sensor Fusion）方向走，将所有传感器集合在同一系统中，收集相关的数据，做到各个级别的自动驾驶。\r\n此外，如果你想要更多的连接性，Generation EQ中的Car-to-X技术可以实现车路、车车互联，对事故进行预警，同时这个系统还可以告知驾驶员附近的充电点以及警告驾驶员所设置的目的地在目前电量下无法到达等。', '奔驰推全新电动SUV，配24英寸液晶显示屏', '2016-09-29 23:43:42', '张伟', '2016年巴黎车展今日在凡尔赛门展览中心举行，梅赛德斯-奔驰（Mercedes-Benz）发布了标榜“电动智能（Electric', 0),
(5, '9月30日消息，亚马逊CEO贝索斯旗下的太空探索公司蓝色起源（Blue Origin）目前宣布，将在10月4日上午10:50发射谢泼德火箭，本次发射的主要目的是为了测试新的逃生系统。 \r\n本次发射的谢泼德火箭包含火箭助推器和顶部的乘员舱，测试逃生系统的过程将持续45秒时间，届时乘员舱下方的增压火箭发动机将点火，使得乘员舱和火箭主体分离，然后弹出降落伞，令乘员舱安全降回地面。据悉，本次测试完成后，谢泼德火箭将会受损，无法进行以后的实验，这也就意味着谢泼德火箭将退役。\r\n蓝色起源将对本次测试进行网络直播，这是谢泼德火箭第五次飞行，应该也会是最后一次飞行了。9月初，亚马逊创始人杰夫·贝索斯曾公布了自己的重型可回收火箭计划，该火箭被命名为New Glenn（新格伦），预计将最快在2020年之前问世。', '蓝色起源10月4日发射谢泼德火箭：测试逃生系统', '2016-09-30 09:13:00', '汐元', '9月30日消息，亚马逊CEO贝索斯旗下的太空探索公司蓝色起源（Blue', 0),
(6, '据悉昨天晚上某斗鱼主播偷跑Nvidia GTX 1050 Ti，同时对这块显卡进行了跑分，包括国内玩家最常用的鲁大师和3Dmark 11，根据泄露的跑分图来看。目前的GPU-Z尚未完全识别Nvidia GTX1050 Ti，不过还是可以从GPU-Z中看出端倪。GTX 1050 Ti的CUDA为768个，4GB GDDR5显存，1291MHz的基准频率，1392MHz的Boost频率。\r\n\r\n从显卡跑分来看，Nvidia GTX 1050 Ti的鲁大师跑分为103799分，而3DMark 11的P分为1000分，X分为3867分。目前GTX 960的跑分基本在3300-3400分之间，也就是说GTX 1050 Ti的实际性能比GTX 960高出14%。不过看样子这应该是旧驱动跑的分数。如果新驱动那么分数应该会有所提升。 \r\n', 'Nvidia GTX 1050 Ti性能提前曝光：比GTX 960高15%', '2016-09-30 09:19:26', '白猫', '据悉昨天晚上某斗鱼主播偷跑Nvidia GTX 1050 Ti，同时对这块显卡进行了跑分，包括国内玩家最常用的鲁大师和3Dmark 11，根据泄露的跑分图来看', 0),
(2, '为了测试效果，AltspaceVR举办了一个派对，请来了《今日秀》的天气主播Al Roker站台。卡通人物弹出到广场上，汇聚到一个平台前，一些没有手臂的机器人飘来飘去，此外还有几个人类——他们的化身是细长的人形。\r\nAltspaceVR使用的系统将观众分隔在几个不同的房间里，每个房间里似乎都能看舞台上的明星。用这个系统来模拟读书会或脱口秀节目应该能增添亲近感，但在这里，它却怪异得让人入迷。\r\n欢呼的人群本应是政治集会中的一道风景线，但当Roker登上舞台的时候，这些化身一声不吭。人们的回应方式不是掌声，而是把爱心、笑脸、拍手表情符发送到空中。\r\n似乎这是Roker的第一次参加AltspaceVR的项目，也是他第一次接触VR。“这需要一点时间来适应，但它真的很有趣，”他告诉一位观众，台下是热烈发送表情符的人群。“虽然这些没有手臂的机器人让我有些起鸡皮疙瘩。”\r\n尽管这样的场景让人感觉很陌生，但如果你听见一个虚拟形象发出某人的声音，即便这个虚拟形象看起来非常假，你也会感觉此人和自己的距离拉近了一些。VR去除干扰和创造空间感的能力放大了这种感觉。\r\n当Roker开始问答环节的时候，你真的感觉就像是大家是在围绕篝火交谈，而不是电台在接听听众来电。\r\n但最大的问题，并不是你是否会在VR环境中感觉和Roker的距离拉近了，而是你是否会觉得与意见冲突的政界人士是否接近到了可以开展文明交谈的程度。\r\n有人问AltspaceVR的CEO埃里克·罗莫，不同党派的支持者是否会有自己的独立空间。他回答说：“现在没有那方面的计划。那么做似乎很有趣，但现在，我们希望的是大家来参加同一个活动，”\r\n“如果事情进展顺利，你可以随时静音其他用户，对他们进行编辑，而版主会把行为不当的用户踢出去，我们希望能保持一种正面积极的氛围，”罗莫说。“媒介的效果是有区别的：之前你使用基于文本的评论与人互动，你处在半匿名状态，以后你直接使用自己的声音与人互动。你可能还是处在半匿名状态，但是这时你变得更加像是你本人了”。\r\nVR电影让你候选人近距离接触\r\n除了为美国人提供近距离感受辩论的体验外，VR电影也参与到这次大选中。今年1月，《纽约时报》制作了一部VR电影，素材来自于总统竞选活动，用户可以下载NYT VR到移动设备上观看这部电影。', '没开玩笑，VR或能决定希拉里/特朗普的竞选结果', '2016-09-29 19:37:21', '孙实', '为了测试效果，AltspaceVR举办了一个派对，请来了《今日秀》的天气主播Al Roker站台。卡通人物弹出到广场上，汇聚到一个平台前，一些没有手臂的机器人飘来飘去，此外还有几个人类——他们的化身是细长的人形。', 0),
(7, '近期微软面向慢速和发布预览（Release Preview）通道用户推送了Win10一周年更新版14393.222累积性更新，补丁具体是KB3194496，现在这一更新也已经面向正式版通道用户推送。\r\n下面IT之家为大家整理的Win10 Build 14393.222 (PC) / 14393.221 (Mobile)更新内容：\r\n• 提升相关稳定性，包括Windows更新代理、驱动分享、VPN虚拟网络、集群、HTTP下载、IE11、Hyper-V虚拟机、多媒体播放和微软Edge浏览器。\r\n• 提升相关性能，包括推送和本地通知、Hyper-V虚拟机、使用微软Edge浏览器时浏览多媒体社交网站\r\n• 解决使用管理员命令提示符提权映射驱动盘无法工作的问题\r\n• 解决流媒体串流格式 (.ts)文件被撕裂问题，包括Windows Media Player和Xbox One Media Player 没有声音。\r\n• 解决Xbox商店内《电影和电视》无法播放刚刚购买的内容问题\r\n• 提升添加到APN新的网络的支持\r\n• 解决IE11中打印所有链接文档无法工作问题\r\n• 解决某些用户在Win10 Mobile遇到的阻止更改默认下载位置问题\r\n• 解决Win10 Mobile中修复微软帐户造成不必要的通知问题\r\n• 解决其他相关问题，包括多媒体、Windows内核、企业安全、文件存储系统、远程桌面、核心平台、Hyper-V虚拟机、企业版Windows更新、显示核心、NFC、输入和组成、蓝牙、Microsoft Lync 2010兼容性、Windows存储API、应用注册、TPM可信模块、组策略、Internet Explorer 11、VPN、BitLocker、无线网络、数据中心网络、Cortana、PowerShell、域控制器、连接管理器和数据使用、微软Edge、Widnows修复环境、文件集群、UWP应用、音频播放设置、DShow桥、应用兼容性、授权许可、云基础架构、域名系统(DNS)服务器、网卡、USB条码阅读器和Adobe Flash Player。\r\n另外微软表示该Win10累积性更新还预计将修复下载游戏（比如Forza Horizon 3），还有Windows商店游戏升级的稳定性等等。', 'Win10一周年更新正式版14393.222全面推送', '2016-09-30 09:22:17', '玄隐', '近期微软面向慢速和发布预览（Release Preview）通道用户推送了Win10一周年更新版14393.222累积性更新，补丁具体是KB3194496，现在这一更新也已经面向正式版通道用户推送', 0),
(8, '据美国科技博客Boy Genius Report的一篇文章指出，一部苹果新iPhone7似乎也发生了爆炸。据一位昵称为@kroopthesnoop的网友在美国知名的Reddit论坛贴出的一张照片，一部新iPhone 7也爆炸了，从图可看到，这款黑色的iPhone 7破损得很严重，屏幕开裂并跟边框分离，而且边框有明显烧焦的痕迹。\r\n苹果的股价周四开盘应声下跌，由于其权重大，同时拖累纳指下跌近0.5%。\r\n\r\n爆炸的机器就是国外网友@kroopthesnoop的iPhone 7。不过@kroopthesnoop并未说明这款手机爆炸的具体情况，只是单纯的晒出照片。在回答网友提出的问题是，kroopthesnoop称：“我不太确定，但肯定是工厂或者运送途中出了问题”。另外，他还开玩笑地说：“至少手机包装没事”。\r\n\r\n苹果公司迄今还没有做出任何回应。不过，市场作出了迅速反应，截至发稿，苹果的股票目前跌1.40%，报112.36美元。\r\n科技股领军的纳斯达克综指下跌0.40%，报5297.47点。该指数一度下跌近0.5%。\r\n更新：截止收盘，苹果股价下跌1.55%，而纳斯达克指数下跌0.93%。', 'iPhone7运输爆炸，苹果股价闻讯下跌', '2016-09-30 09:24:58', '朱逸', '据美国科技博客Boy Genius Report的一篇文章指出，一部苹果新iPhone7似乎也发生了爆炸', 0),
(9, '据国外媒体报道称，中国制造一直以来都被外界视为没有创新能力的代名词，但大疆创新却用自己的实际行动反驳了这一论调。对此，美国科技媒体The Verge长期撰稿人托马斯-瑞克（ThomasRicker）日前就撰文对大疆创新在改变中国固有形象方面的努力进行了一番分析。\r\n\r\n以下是文章主要内容：\r\n2012年初，大疆创新科技发布旗下首款无人机套装“风火轮”（Flamewheel）。这一产品的消费者定位是超级发烧友，因为产品在购买后还需要大量的组装工作。2012年12月，大疆发布了首款“精灵”（Phantom）无人机，而这一产品的出现也成功改变了一切。\r\n由于大疆一直习惯于在幕后运作，以至于该公司的首款精灵无人机甚至都没有打上大疆的Logo，机身上仅有一个小小可移除的标签。然而，这款精灵无人机在一经发售后就很快风靡全球。\r\nFrost And Sullivan分析师迈克尔-布拉德斯(Michael Blades)表示：“他们几乎凭借着这一产品颠覆了整个行业。”\r\n应该说，大疆首款精灵无人机具备了足以吸引专业人士的性能，同时对于入门者来说又十分容易上手。而且它无需手动组装，也具备了不错的续航能力和稳定性\r\n“这一产品真正缩小了玩具和专业工具之间的距离。”布拉德斯说道。\r\n事实上，大疆的创业历程和许多美国初创企业类似，你甚至都可以简单粗暴的把上文中的“风火轮”替换成为苹果的“Apple I”，把“精灵”无人机换成“Apple II”，然后你所看到的就是美国历史上最著名的企业创新故事之一。但大疆毕竟不是一家美国企业，它是一家中国科技公司，而这或许会让硅谷感到些许忧虑。\r\n比如，运动相机制造商GoPro不久前进入了无人机市场，并发布了可折叠Karma无人机。然而这款被寄予厚望的无人机竟然缺少了粉丝所期盼的两项主要功能，即防碰撞和跟随模式。反之，大疆推出的全新MavicPro折叠无人机不仅具备了Karma所缺失的这些功能，同时还增加了最新手势控制功能，即允许用户通过挥动手臂引起无人机的注意，然后向它发出信号让其跟随用户，且两者价格几乎一致。\r\n因此，对于GoPro宣传片中经常出现的那些痴迷的滑雪者、冲浪者以及骑山地自行车者来说，哪款无人机会更具吸引力呢？\r\n当然，我们也不能对GoPro太过严苛，毕竟该公司才进入这一行业不久，且同另外一家美国无人机制造商3D Robotics完全不同。需要指出的是，3DR的无人机一直以来都受到了发烧友和电影航天专业人士的青睐，该公司甚至挖来了大疆前北美负责人科林-吉恩（ColinGuinn）。\r\n当3DR的Solo无人机去年发布时，外界认为其将成为大疆精灵无人机的有力竞争对手。但是，3DR随后遇到的制造和供应链问题严重影响了用户交付率。自此之后，3DR便开始更多专注于企业应用的研发，同时裁撤了大量员工，吉恩也在本月初从3DR离职。\r\n消息指出，大疆所使用的机器视觉技术由硅谷计算机视觉领域初创公司Movidius提供。而英特尔在不久前已经宣布收购了Movidius，因此后者即将成为英特尔旗下的全新部门。从这个角度来看，部分中国最先进的无人机使用的依旧是硅谷的芯片。但我们也需要意识到，帮助实现MavicPro部分高级飞行功能的代码依旧是由大疆自主撰写的。\r\n众所周知，本世纪初的中国一直被外界嘲笑只会生产廉价山寨产品，并使用诸如“Nokla”、“iPhonc”等可笑品牌名称来混淆视听。当时，这些假冒洋品牌几乎无一例外的来自中国，这也给外界留下了“中国很会模仿，但不会创新”的固有印象。\r\n但大疆绝不是山寨厂商，远远不是。反而，大疆可能是中国到目前为止出现的最具创新精神的企业之一。而且，大疆的创新不仅仅体现在产品层面，在制造、零售以及客户体验环节也都可以看到。如果说大疆在创新方面取得的成功仅仅是“中国制造”变革的开端，那么相信包括OPPO、小米、vivo以及华为这些企业也会很快赢得硅谷竞争对手们的尊重与重视。', '大疆创新能力改变中国制造形象，硅谷怕了吗？', '2016-09-30 09:28:38', '汤姆', '据国外媒体报道称，中国制造一直以来都被外界视为没有创新能力的代名词，但大疆创新却用自己的实际行动反驳了这一论调', 0),
(10, '可能大家比较熟悉微软的Build开发者大会，但对于Facebook来说F8大会是该公司每年最重要的一场活动，虽然现在距离2017年还有几个月时间，但Facebook已经公布明年F8大会具体举行日期，4月18日、4月19日。\r\n\r\n该时间和往年相比比较一致，但明年Facebook将由之前的旧金山的Fort Mason中心场地换为圣何塞场地更大的McEnery会展中心。\r\n\r\nFacebook提前透露明年F8将有超过45场论坛，并且提供常规展示以及与Facebook专家对话的机会，但现在2017年F8大会尚未开放注册。\r\n', 'Facebook公布2017年F8大会：4月18日圣何塞举办', '2016-09-30 09:31:51', '玄隐', '可能大家比较熟悉微软的Build开发者大会，但对于Facebook来说F8大会是该公司每年最重要的一场活动，虽然现在距离2017年还有几个月时间，但Facebook已经公布明年F8大会具体举行日期，4月18日、4月19日', 0),
(11, '9月30日消息，作为高规格固态硬盘的的最新产品，三星SM961发布至今已有3个多月，该产品之前一直面向OEM厂商，现在终于降临零售市场。\r\n三星SM961硬盘支持NVMe规范，采用全新“Polaris”北极星主控和三星V-NAND MLC立体闪存，容量有128GB、256GB、512GB、1TB四个版本。\r\n\r\n至于性能，三星SM961的速度可以达到读取3200MB/s，写入1800MB/s，最大读写IOPS分别为450000/320000，采用了PCI-E 3.0 x4通道。\r\n价格方面，目前已知的1TB版本在日本秋叶原零售价为79800-81000日元，约合人民币5300元左右，可享受3年质保。', '最高售5300元，三星SM961 M.2 SSD开卖', '2016-09-30 23:18:20', '弥尘', '9月30日消息，作为高规格固态硬盘的的最新产品，三星SM961发布至今已有3个多月，该产品之前一直面向OEM厂商，现在终于降临零售市场', 0),
(12, '北京时间9月30日消息，三星在Galaxy Note 7摔了一跤，它可能会给Note品牌造成永久的伤害，尽管如此，我们对手机的看法并没有改变。\r\nNote7绝对是一款空前强大的三星产品，它集众多优点于一身，很难被其它产品替代。如果不考虑价格，Note7绝对是目前最棒的Android手机，正因如此，如果要寻找一款手机与iPhone7 Plus对比，选择Note 7再合适不过。三星和苹果都很重视高质量拍照体验，强调快速精准的指纹识别系统，都想通过外部设计提升品牌认知度。如果将两款手机对比，我们会有一些新的发现。\r\n科技网站Androidcentral最近对两款手机进行了对比，评测报告如下：\r\n硬件\r\n苹果与三星竭尽所能，努力让圆角矩形手机变得更好，手机背部安装了摄像头，前面安装了Home按钮。不论是哪一款手机，前面绝大部分空间都被屏幕占据，不论购买什么颜色的手机，最大的差异主要在后盖。\r\n总体而言，两款手机看起来很相似，比以前的手机更相似。我们将苹果黑色版iPhone 7 Plus与三星黑色版Onyx Note 7做了对比，隔一个房间，站在手机正面，很难将二者区分开来。如果选择的是Jet Black版本iPhone 7 Plus，差别可能会更小。这一点之所以有趣主要有两个原因。首先，在S系列手机之外，苹果首次推出一款外观设计没有太大改变的手机，这是一次非同寻常的改变；其次，到了今天，三星的工业设计已经相当出色。\r\n当我们拿起Note 7和iPhone 7 Plus，二者的差异才渐渐明显起来。磨砂黑iPhone的表面是有纹理的，握起来更容易一些，三星手机背部却是玻璃，握在手中我们会更用力些，防止滑落。这一点在大号版iPhone 7 Plus上体现得更明显，如果只使用拇指，我们很横跨整个屏幕。在7系列手机上，苹果并没有改变屏幕与机身的比例，正因如此，7系列手机虽然屏幕比Note 7上，但是总尺寸更大。\r\n苹果iPhone7 Plus与三星Note7对比评测：功能重于形式\r\n\r\n苹果手机的显示屏不只尺寸小一些，分辨率也要低一些。iPhone 7 Plus安装的屏幕分辨率只有1080p，三星Note 7达到了1440p，从像素密度上看少了118ppi。两款手机的显示屏没有可比性。三星的屏幕更亮，文本更清晰，由于采用了可弯曲AMOLED设计，图像到了手机的边缘会向下弯曲。两款显示屏都支持DCI-P3色域标准，范围宽了26%，换言之，你所看到的颜色更接近人眼看到的颜色。红色会更红，黄色更加充分。\r\n之前我曾说过，iPhone 7前面的缩进圈就是按钮，这种表述实际上并不准确。新iPhone 7没有物理按钮，只有一块压力感应玻璃和指纹传感器，它就是苹果所说的“触觉引擎（Taptic Engine）”，在Apple Watch、MacBook触控板上也有这种组件。新的振动马达会给用户带来独特的体验，它可以精准模拟按钮按压动作，还可以带来令人愉悦的触觉反馈体验，不会形成破坏作用。\r\n在iPhone 7 Plus上，这种体验并没有完全模拟按钮的压感效果。你会感觉到点击时好像力量会传遍整个手机，在最初使用的两天内，你会感到不太适应。还好，按钮没有影响到Touch ID的表现，放眼当今的手机市场，Touch ID都称得上是最好的指纹识别传感器。和以前相比，现有传感器的便利性既没有提升，也没有下降，换言之，它的体验和Galaxy Note 7几乎一样。苹果的新设计有一个好处，这点需要很长的时间才能发现，2年之后，你没有必要更换按钮了。\r\n如果没有S Pen，Note就不能称其为Note，在过去的几年里，三星不断改进压力感应技术，使设计更符合人体工程学，今年也不例外。你可能会喜欢上手写笔，每天都使用，也可能抽出一次，确认它的存在，然后弃之不理。如果你需要手写笔，它很不错，毕竟手写笔是三星所强调的。三星Note 7仍然配有3.5毫米耳机接口，可以插内存卡，支持无线充电。最新的iPhone没有这些功能，至于这些功能是否有必要，大家公说公有理，婆说婆有理，没有定论。两款手机的外观都很好，给人的感觉也不错，做工很好。\r\n\r\n到底买哪个？\r\nGalaxy Note 7有一个独特之处：它收集了一些好创意，将创意融入体验之中，为用户服务。没有任何单一的特点或者体验真正超凡脱俗，但是三星有能力将独立的创意整合起来，造出没有妥协、没有折衷的手机，带给用户众多的有趣特色，这才是让人赞叹的事。如果你只是想要一台处理APP、在Facebook上发帖的手机，Galaxy Note 7可能会有些笨拙。\r\niPhone 7 Plus体现了苹果设计和软件发展的下一站，不只如此，它还是苹果整体理念的下一站。如果你所使用的方式正是苹果所期望的，它会表现得很好。苹果很勇敢，它用自己的方式打造了单一、漂亮、强大的体验，但是这种体验同样存在局限，有时显得太武断，完全没有必要。\r\n到底买哪一款手机？如果你想要一台手机，可以探索，知道手机中的一些功能可能永远不会使用，但是它能提供良好的整体体验，那么你可以选择Note 7。如果你想要一台强大的手机，拥有生动的图像，当你发现有一些功能很有趣，但是别人告诉你说这种功能完全没必要，此时你不会介意，那么你可以选择iPhone 7 Plus。', '苹果iPhone7 Plus与三星Note7对比评测：功能重于形式', '2016-09-30 23:24:28', '虎涛', '北京时间9月30日消息，三星在Galaxy Note 7摔了一跤，它可能会给Note品牌造成永久的伤害，尽管如此，我们对手机的看法并没有改变', 0),
(13, '你见过纯电动的商用飞机吗？我们都没有。\r\n作为一个电池设计师，Luke Workman 有一个想法，能在不久的将来把这一切变成现实。他希望通过优化现有的电池技术，并重新设计飞机上的电池布局，使他们更有效、更高效地适应长途旅行。\r\nLuke Workman向 News Atlas解释了他关于电池设计的想法，以及如何帮助航空业过渡到更清洁、更可持续的飞行状态。\r\n首先，Workman表示，今天的电动马达“在空气中的效果非常好”，主要问题在于封装，需要尽可能多地把能量存储到电池组中，同时又要最大程度地降低重量。他告诉 News Atlas：“电池只有 35%的重量用于电量存储，铝铜合金的表面薄片只是用于电能的导入和导出。这是很大的一部分重量，用的却不是导电材料。飞机搭载的很大一部分重量居然无法用于储存能量。”所以 Workman到底提出了什么样的解决方案呢？\r\n他想把飞机的机翼部分作为一个“巨大的电池”，更具体地说，他想把机翼改造成“电极板表面，然后穿过整个机翼的交叉区域进行处理。”\r\n“我想出一个电池设计，重量远远降低，并解决了散热问题——仅仅需要一个巨大、平整的表面，比如说，超过正常尺寸的超音速飞机机翼。”\r\n不同于传统电池通过顶部的金属片传导能量，Workman打算把大片的导电物质一起置入超薄的双面箔层（一面铝，一面铜）。这样做时，所有的电都会通过表面互相联系在一起。下面举个例子：\r\n飞机也要纯电动？新型电池可让梦想成真\r\n因为机翼需要坚固且合理的结构，Workman建议：“我们可以把电池作为机翼的中间层，然后我们可以用铝皮表面的机翼作为集电器，把电能从电池层输出到电动机。”一个可视化的说明在下图：\r\n飞机也要纯电动？新型电池可让梦想成真\r\n他还指出，由于现在的小电池都有一个特定用途，这种“三明治”的想法无法获得同样效果。但把这个概念应用到大面积的工程，因为它是如何传播的。它不仅会非常好，但是如此薄，它也有非常小的热量。和我们大多数人都知道，电池温度调节通常是一个很常见的话题，当讨论有关电池。\r\n由于以“超音速”飞机作为例子，为了在飞机上实践他的想法，他快速地制定了一些预估的技术规格：\r\n“鉴于现有的电池材料具有安全、高生命周期等特性，每0.2毫米厚的箔层大约可以获得13300安时。九百层就能给我们提供3.3 kV标量、大约44兆瓦小时的电池存储。\r\n总重量大约104000公斤（约230000磅），由高比例的导电材料构成，传导损耗比现有的任何技术更低，但充放电速率很高。由验证过的材料制作的成品，每公斤能给我们提供423瓦时。\r\n假设我们的机翼面积是 300平米，箔层约20厘米厚，顶部和底部各为 1厘米厚的电导板，那么电池越大，效率越高。”\r\n总之，飞机越大，机翼和表面积越大。因此，当平面变大时，效果会更好、更全面，不仅能用于飞机，也能用于其他交通工具或硬件结构：公车、火车、卡车、轮船甚至电力存储。', '飞机也要纯电动？新型电池可让梦想成真', '2016-09-30 23:27:14', '陈杨英杰', '你见过纯电动的商用飞机吗？我们都没有', 0),
(14, '海信布局激光显示技术已有大概十年之久，今年7月份，海信正式发布了全球首款DLP超短焦4K激光电视。到底什么是激光电视？它和普通液晶电视有哪些不同？相信很多朋友在听到“激光电视”这四个字时都会有同样的疑问。\r\n日前，这款海信4K激光电视也来到了IT之家，下面我们就以图集的方式来带大家一起揭开这款产品的神秘面纱。\r\n首先，到底什么是激光电视？\r\n经过一番了解后，我们得知海信激光电视其实更类似于一个采用了超短焦投射技术的投影仪，它通过反射式投射能在极短的物理距离上投射出100英寸的超大画面。\r\n相比传统氙灯以及LED光源，激光光源的寿命要长得多，亮度下降到此前的80%差不多要5万小时；其次是亮度高、色域广，海信4K激光电视官方标称的亮度可达3000流明，色域覆盖率为116%的NTSC，相比OLED和量子点电视更加出色。\r\n\r\n海信4K激光电视包括屏幕、主机、音响三大部分：\r\n• 屏幕：屏幕部分只是起到类似幕布的作用，无需电源，没有任何功耗。海信方面表示激光电视采用的是菲涅尔无源仿生屏，能够反射掉除了激光投影主机以外的光源，抗环境光干扰能力更强，明亮环境下同样可以观看；\r\n• 主机：文章开头的配图就是海信4K激光电视的主机部分了，它实质上是一台激光投影仪，利用一种蓝色单一激光来透射出画面，然后经过光学系统反射到幕布上。\r\n海信4K激光电视首次在激光电视中采用DLP反射式超短焦透射技术，基本可以贴墙放置，一般的电视柜摆放肯定是没问题的。另外，它还采用了高处理能力光学引擎、高分辨率镜头设计、以及高精度制造工艺，成功实现了4K超清分辨率，这对于100英寸巨屏而言实际意义显著。\r\n此外，海信4K激光电视也继承了海信电视的诸多特色功能，例如支持HDR、清晰度增强、3D降噪、MPEG降噪、色彩增强等多种图像处理技术；配备MEMC独立芯片，从而实现运动帧画面的估计和动态补偿；采用了与IMAX相同的显示方案和3D实现方案；搭载与海信智能电信相同的VIDAA智能操作系统。\r\n• 音响：海信4K激光电视配有一套5.1声道环绕声音响，提供标准、临场、剧场、音乐、语音、自定义等多个场景模式可选；支持蓝牙连接，可在电视关闭的情况下，通过蓝牙连接手机等设备播放音乐；提供底座以及壁挂两种安装方式，以适应不同用户的安装需要。\r\n接下来一起来看看实际安装过程及产品细节实拍图集：', '100英寸巨幕搬进小客厅！海信4K激光电视开箱安装图集', '2016-09-30 23:32:57', '阿华', '海信布局激光显示技术已有大概十年之久，今年7月份，海信正式发布了全球首款DLP超短焦4K激光电视', 0),
(15, '10月1日消息，微软的Xbox One“天蝎座”将会是史上性能最强的游戏机，微软也称Xbox One“天蝎座”将会让自家的FPS游戏《战争机器4》在4K分辨率下以60FPS的速率运行。不过这款被微软寄予厚望的Xbox主机究竟售价多少呢？目前看起来似乎有点贵了。\r\n最近Xbox部门老大Spener在接受WinBeta采访时，提到Xbox天蝎座是一个高端产品，暗示这款主机的价格肯定不会便宜。Spener在接受采访的时候称Xbox One“天蝎座”将不会是史上最贵的游戏机，之前这个称号被索尼的PS3所拿到。PS3刚发售时候售价高达599美元，于是首发销量并不好。\r\n\r\n此外Spener称Xbox One S和天蝎座是同时设计的，两款主机的定位也不同，所以相互之间不会影响。\r\n目前PS4 Pro的售价为399美元，而自家的Xbox One S售价为299美元，相信微软不会作死真的将Xbox One“天蝎座”定价在599美元。预计499美元（约合3327元人民币）的定价能够让玩家们接受。', '不超过600美元：微软暗示Xbox One“天蝎座”不会是业界最贵', '2016-10-01 08:44:24', '白猫', '10月1日消息，微软的Xbox One“天蝎座”将会是史上性能最强的游戏机，微软也称Xbox One“天蝎座”将会让自家的FPS游戏《战争机器4》在4K分辨率下以60FPS的速率运行', 0),
(16, '美国太平洋时间2016年10月4日早上9点，谷歌发布会上将推出首款自主品牌手机，谷歌手机将是谷歌消费者硬件事业部成立来的首款产品。\r\n与以往谷歌主要通过硬件向合作伙伴和消费者展示软件不同的是，此次谷歌手机的推出，志在与苹果和三星直接竞争高端手机硬件市场份额。\r\n此前谷歌购入摩托罗拉之后曾经短暂尝试过推出中端手机产品，此外还采用过Nexus作为安卓软件的旗舰手机。但本次在旧金山的发布会上，谷歌将要展示自主品牌手机，并直指高端市场。根据Android Police的消息，本次发售的谷歌手机不会采取低价策略，定价将与苹果相当。\r\n华尔街见闻：谷歌Pixel手机有望再现07年iPhone时刻\r\n2016年初，前摩托罗拉总裁里克&middot;奥斯特洛（Rick Osterloh）被谷歌授命建立消费者硬件事业部。谷歌将硬件部门提高到与安卓部门、搜索部门和广告部门平起平坐的位置，奥斯特洛作为谷歌硬件事业高级副总裁直接对谷歌CEO桑德尔&middot;皮蔡负责。\r\n虽然目前全球4/5的手机都搭载谷歌的安卓系统，但苹果手机却占据着手机市场中最富有的用户群体，其苹果商店的销售额也远远领先于谷歌商店。\r\n手机市场专业咨询公司CCS Insight分析师Geoff Blaber评论称，谷歌不能看着所有高端客户都让苹果抢去而坐视不管。\r\n除目前已知谷歌手机将搭载与苹果Siri类似的人工智能语音助手以外，其他&ldquo;特色&rdquo;仍未有可靠消息确认。谷歌手机的发布是否能再现2007年的iPhone时刻，只能拭目以待。\r\n此外在此次发布会上，除自主品牌手机以外，谷歌还将发布首款与搭载安卓系统手机配合使用的虚拟现实头盔，与三星VR采用的脸书Oculus平台竞争。智能家居也是此次发布会上的重中之中，谷歌称将发布Home系统与亚马逊的Echo系统在智能家居方面一较高下。', '华尔街见闻：谷歌Pixel手机有望再现07年iPhone时刻', '2016-10-03 17:04:41', '华尔街见闻', '美国太平洋时间2016年10月4日早上9点，谷歌发布会上将推出首款自主品牌手机，谷歌手机将是谷歌消费者硬件事业部成立来的首款产品', 0),
(17, '关于中国科技公司与硅谷的竞争一直都是媒体所关注的焦点，此次在CNBC采访李彦宏的对话中，李表示虽然最大的互联网公司依然在美国，但是中国科技公司已经具备了强大的竞争力与创新能力。\r\n而事实上中国科技公司在近几年的发展速度着实让人侧目，与硅谷之间的差距也在越来越短，甚至很多硅谷公司开始反过来向中国科技公司学习。\r\n那么中国科技公司这几年，为何越来越有反超硅谷之势，我们可以从几个方面来看：\r\n中国互联网需要的是改造商业基础\r\n早期的PC时代，话语权长期掌握在美国公司手中，因为其掌握着各种硬件与软件的前沿技术，而中国并不具备这一系列的优势，因此长期处于落后位置，但随着互联网的到来，这种位置发生了改变。\r\n中国科技公司第一次发力是PC互联网时代，所有试图进军中国市场的美国科技公司最终都以失败告终，谷歌、ebay、微软msn、mcafee等公司与产品都统统败北，取而代之的是百度、阿里巴巴、腾讯、360中国公司利用自身对于中国市场的理解，最终建立了自身的地位。\r\n在PC互联网时代，中国科技公司更像一个模仿老师的学生，而在移动时代，这个学生已经彻底超越了老师，国内成功的互联网产品已经不再是国外的模仿，而是纯本土式的原创，诸如微信、陌陌、小米、wifi万能钥匙、生活O2O、外卖O2O等等产品的成功都无法在国外找到完全的对应产品。\r\n窥其原因，还在于中国环境的特殊性，人口红利让中国的互联网迅速崛起，而同时落后的传统商业基础设施，需要互联网进行高屋建瓴的全面改造，而改造基础设施这种事，并不像早期PC时代的硬件软件可以被标准化，而需要深入到每一个不同环境细节，因此移动互联网时代，中国科技公司的案例也在开始成为全球的教科书。\r\n更为激烈的环境，逆境求生\r\n优酷土豆合并、58赶集合并、美丽说蘑菇街合并、美团大众点评合并、携程去哪儿合并、滴滴优步合并。而美国公司，没有出现过中国公司这样如此高密集的大公司合并，这种事情有点像天方夜谭。\r\n原因在于美国科技公司的竞争并没有达到像中国这样激烈，在美国一个产品出来之后，一般不会立即被同行所模仿，而受制于反垄断法更不可能有大公司推出相通产品。\r\n但是在中国则完全不同，在中国每一个领域几乎都有两家以上科技公司占领，并且中国没有类似的反垄断法，大公司一旦看到机会则会全力迅速跟进，通过自己的资源与流量成为一方霸主。\r\n例如直播这件事，早期的17当时做直播不温不火，但是在映客把直播带火之后，整个行业如同闻血而动的食人鱼，小到同行大到大公司，全都开始布局直播，而腾讯方面更是极端，除了旗下投资龙珠、斗鱼、自身还要做直播now、QQ空间直播、花样直播等等。\r\n表面上看，如此凶险的环境似乎并不利于创业，但实际上越是恶劣的环境越是能够生长出顽强的公司，这样的环境倒逼公司的成长，所有出头的公司都是行业的佼佼者，并且有着更持久的生命力，不会轻易失败。\r\n例如微博与陌陌，所有人都并不看好其后期的发展，但是这两个产品却在直播时代逆势增长，而微博股价更是翻翻，令所有人侧目，反观国外Tiwtter尽管当年如日中天，但如今却正在寻求卖身，像中国科技公司这种逆境求生殊死一搏的生命力，在国外已经很难看到了，在国外等于天方夜谭。\r\n居安思危，前沿技术开始并肩国际\r\n在如此险恶的环境下，越来越多的中国科技公司都开始意识到技术发展的重要性，唯有建立起技术壁垒才能比肩国际科技公司，并不能止步于当前，这种居安思危的心态，也越来越让中国科技公司更加重视技术。\r\n例如百度一直以来都是以技术优势见长，其所建立的百度大脑集成了语音识别技术、图片识别技术、自然语言理解技术等前沿技术，目前已经达到了5岁儿童的水平，而今年百度的深度语音识别技术被麻省理工评论为十大先进技术，与纳米技术、生物技术、航天技术并列，也是目前唯一一家中国入选公司，此外百度在无人车方面也是第一家在亚洲以及美国获得政府允许，同时进行道路测试的公司。\r\n再比如华为公司，其长期以来一直深耕技术，在交换机等网络设备上的销量已经超过美国思科，成为世界第一，而其在手机方面也在深耕技术，并且取得了国外与中国市场的双重成功。\r\n此外，阿里的阿里云正在与亚马逊AWS对标，而其也在语音和图片技术方面有诸多布局，而腾讯方面也在加速布局语音识别、图像识别等等，而国内还有科大讯飞、大疆这样技术驱动的知名公司，这些公司不仅在国内有所作为，并且在国际上也越来越有技术份量，拥有自己的话语权。\r\n结语：\r\n中国的科技公司发展正在超出任何人的想象，其不仅需要更懂得如何改造中国商业的基础设施，更要在残酷的环境下生存，有着更顽强的生命力，而这种生命力正在将中国科技公司带回到技术驱动商业的正轨上。\r\n中国科技公司正在与硅谷的差距正在越来越小。', '中国科技公司正在赶超硅谷吗？', '2016-10-04 07:42:40', '承哲', '关于中国科技公司与硅谷的竞争一直都是媒体所关注的焦点，此次在CNBC采访李彦宏的对话中，李表示虽然最大的互联网公司依然在美国，但是中国科技公司已经具备了强大的竞争力与创新能力', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`guest_id`);

--
-- Indexes for table `page`
--
ALTER TABLE `page`
  ADD PRIMARY KEY (`passage_id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `guest`
--
ALTER TABLE `guest`
  MODIFY `guest_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
