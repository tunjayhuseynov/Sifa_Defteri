-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 01 Haz 2020, 00:37:44
-- Sunucu sürümü: 10.4.6-MariaDB
-- PHP Sürümü: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `sifadefteri`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `admins`
--

INSERT INTO `admins` (`id`, `name`, `username`, `password`) VALUES
(1, 'Selanda', 'noob', '123456789');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `blogs`
--

CREATE TABLE `blogs` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categoryId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `text`, `image`, `categoryId`) VALUES
(4, 'Bronşit ve Astım', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Akşamdan büyük beyaz turpu yuvarlak kesin ve içini oyun. Oyulan kısma bir miktar bal dökülerek bekletildiğinde ve sabah saatlerinde turp suyu ve bal karışımı içildiğinde doğal bir öksürük şurubu yapılmış olur. \r\n★ Hatmi çiçeğinin (Hibiscus, gülhatmi) kökünden 50 gram ve kekik otundan 50 gram küçük parçalar halinde kesin ve karıştırın. Sonra 3 yemek kaşığı yarım litre kaynar suda 10-18 dakika kaynatın ve süzün. Ondan günde 3 defa yarım su bardağı tüketin.\r\n★ Ahududu yaprağını demleyin ve çayını için. Bu balgamı önler.\r\n★ 20 gram ıhlamur çiçeğini 200 gram kaynar suda demleyin ve 10 dakika bekletin. Suyunu süzün ve günde 1 defa 1 su bardağı kadar için.\r\n★ 1 kilo beyaz soğanı temizleyin ve küçük parçalar halinde kesin. Sonra suyu çıkana kadar ezin ve 1 kilo şekerle karıştırın. 2 hafta güneş görecek bir yerde bekletin. Ondan her gün sabah aç karna bir yemek kaşığı tüketin. \r\n★ Her sabah aç karna 1 bardak eşek sütü içmek astım hastalığına çok iyi gelir.\r\n★ Ihlamur çiçeğinden bir yemek kaşığını bir su bardağı kaynar suda 20 dakika demlemek ve 5-10 gün içmek astım, anjina ve grip için faydalıdır.\r\n★ Bir tutam safran otunu bir bardak keçi sütü ile kaynatın ve günde 2 bardak kadar 10-15 gün için.\r\n★ Bronşları temizlemek için bıldırcın yumurtasını ekmeğe katarak 10 gün boyunca bir günde bir yumurta tüketin (alerjiniz yoksa). Ancak dikkat edilmesi gereken husus yumurtanın organik olmasıdır.', '/images/blogs/1590587970.jpg', 1),
(5, 'Öksürük', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Eğer öksürük aralıksız devam ediyorsa birkaç ayva tohumunu, 1 tatlı kaşığı anason tohumu ve kimyon ile karıştırın. Bir bardak kaynar suda demleyin. Günde birkaç defa için. \r\n★ Bir bardak kaynar sütün içine azıcık zerdeçal dökün ve karıştırın. Sıcak sıcak içmek öksürüğü keser.\r\n★ Eğer öksürük aralıksız devam ediyorsa keten tohumunu ezin ve çay gibi demleyin. Günde 3-4 defa için. \r\n★ Bir kaç ısırgan tohumunu ezin ve aynı miktarda balla karıştırın. Onu günde birkaç defa şarapla için. Bu öksürüğe iyi gelir.\r\n★ Günde 3 defa maydanoz yemek öksürüğe iyi gelir.\r\n★ Ezilerek balla karıştırılmış soğan, tereyağında kızartılmış soğan,  sütte pişirilmiş soğan öksürüğe çok faydalıdır. Günde birkaç defa bir yemek kaşığı tüketin.\r\n★ Fındık tanelerini balla ya da şekerle yiyin.\r\n★ Evelik otunu çay gibi demleyin ve için. Bu öksürüğü azaltır.\r\nBoğmaca öksürük için 10-15 adet innabı (hünnap) bir bardak inek sütünde kaynatın ve bir kaç gün günde 3 defa, her defasında 1 bardak içilmesi gerekiyor.\r\n★ Fındık yağı vücut sıcaklığını artırıyor, öksürük ve göğüs ağrılarına iyi geliyor.\r\n★ Balgamı temizlemek için tatlı meyanı temizleyerek yemek ya da demleyerek çay gibi içmek gerekiyor.\r\n★ Boğmaca öksürük için kırmızı turpun suyunu balla karıştırın ve günde 3 defa yarım bardak için.', '/images/blogs/1590588475.jpg', 1),
(6, 'Mide', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Yarpuzun (yabani nane) 40 gramını 1 bardak kaynar suda 15 dakika demleyin ve süzdükten sonra günde 3 defa yarım bardak içmek mideye iyi geliyor, kusmayı ve mide bulantısını önlüyor.\r\n★ 30 gram kimyonu 1 bardak kaynar suda kaynatın ve süzün. Günde 3 defa bir bardak için. Bu mide gazına, mide bulantısına ve kusmaya iyi geliyor.\r\n★ Yarım çay bardağı safranı, 1 tatlı kaşığı balı 100 gram su ile karıştırın. 2-3 gün karanlık bir yerde bekletin. Her sabah yemekten 15-20 dakika önce 1 tatlı kaşığı kadar için. Bu mide ülserine (mide yarası) iyi gelir. Tedaviye ara vererek 5-6 hafta devam edin.\r\n★ Yeni sıkılmış sinir otunu iyice ezdikten sonra her gün yemekten önce günde 3 defa bir yemek kaşığı için. Bu mide ülserine (mide yarası) iyi gelir. Tedavi 6-8 hafta sürmektedir.\r\n★ Kuzukulağının bir kaç yaprağını günde 3 defa yemek mide ekşimesini önlüyor.\r\n★ 30 gram eveliyi bir bardak suda kaynatın. Bu suyu içmek mide ağrısına iyi gelir. Tedavi 3-4 gün devam ettirilmelidir.\r\n★ Mide ekşimesi olduğu zaman günde bir kaç defa çiğ lahana yemek iyi geliyor.\r\n★ Bir yemek kaşığı dereotu tohumunu 2 bardak kaynar suya dökün ve 10 dakika demleyin. Daha sonra karıştırın ve süzün. Bunu günde üç defa yemekten önce yarım bardak içmek mide gazını rahatlatır.\r\n★ Üzerlik tohumunu toz haline getirin ve ona aynı miktarda şeker ve ya bal karıştırın. Günde 3 defa, her defasında 1 çay kaşığı tüketin. Bu mide hastalığına iyi gelir.\r\n★ Mide ülserinin (mide yarası) ağrısını azaltmak için 2 yemek kaşığı sinir otu tozunu bir bardak kaynar suda 15 dakika demleyin ve soyumasını bekleyin. Daha sonra süzün. Günde 3 defa yemekten yarım saat önce bir yemek kaşığı için.\r\n★ Mide ve 12 parmak bağırsağın yaralarını iyileştirmek için her gün taze hazırlanmış çiğ patates suyunu günde 3 defa yemekten önce yarım bardak için.\r\n★ Zencefil mide hazmına yardımcı oluyor ve mide iltihabını önlüyor.\r\n★ Bir bardak nar suyunun içine bir dilim limon ekleyin. Şeker ekleyin ve karıştırın. Bu mide ağrınıza ve mide ekşimesine iyi gelecek.\r\n★ Mide asidi için havuç suyu için. Eğer mide asidinden çok fazla rahatsızsanız havuç suyunu daha çok için.\r\n★ Beyaz dut mide-bağırsak hastalıklarının iyileşmesine yardım ediyor. Günde aç karna yarım kilodan çok 10-15 gün yemek gerekiyor.\r\n★ Kroniki mide ülserine kestane ve tarhun yemek iyi geliyor.\r\n★ Midede, bağırsakta şişkinlik olursa kaynar suya nane ekleyin. Günde aç karna bir ve ya iki defa ve her defasında yarım bardak için.\r\n★ Mide parazitini temizlemek için binbirdelik otunu çay gibi demleyin ve 5-10 gün için.\r\n★ Mide safrasını azaltmak için kırmızı erik yemek gerekiyor. Menekşe ve gül taç yapraklarını demleyin ve 5-10 gün için.', '/images/blogs/1590588991.jpg', 1),
(7, 'Bağırsak', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN  KULLANMAYIN!\r\n★ Yarpuzun (yabani nane) yapraklarını küçük parçalar halinde kesin ve 2 yemek kaşığını yarım litrelik çaydanlıkla demleyin. Ondan günde bir kaç defa, her defasında yarım bardak içmek bağırsak ağrılarına iyi gelir.\r\n★ Bağırsak yarası için sinir otunu ezin ve çıkan suyunu aynı miktarda balla karıştırın ve lavman yapın. Ayrıca aynı karışımda bir kaç gün sabah aç karna yarım bardak içmek önemlidir. Tedavi 3-4 gün devam etmelidir.\r\n★ Eğer bağırsağınızda yara varsa bir demet kurutulmuş eveliyi ovun ve bir litre inek sütü ile karıştırın ve kaynatın. Bundan günde 3 defa, her defasında 1 bardak için. Bu tedaviye 15 gün devam edin.\r\n★ Onikiparmak bağırsak hastalığı için kayısının çekirdeğini çıkarın, kayısıyı ezin ve suyunu çıkarın. Günde bir kaç defa, her defasında yarım bardak için. Zaman zaman kayısı da tüketin.\r\n★ Karın ağrısı zamanı nar kabuğunu kaynatın ve süzgeçten geçirin. Ona kendi miktarında şeker katın ve günde 3 defa, her defasında yarım bardak için.\r\n★ Devamlı siyah frenk üzümü yemek, suyunu içmek ve çay gibi demleyerek içmek onikiparmak bağırsak ülserine (yarasına) iyi gelir.\r\n★ Bağırsak hastalığı için 5-6 gün aç karna pancar ve havuç suyundan 1 bardak içmek gerekiyor.\r\n★ Bağırsak solucanı (ascaris) için beyaz balkabağı tohumunu ezin ve gerçek balla karıştırın. Bir kaç gün aç karna 3-4 yemek kaşığı yemek gerekiyor.\r\n★ Papatya bitkisini kaynatın ve suyundan gün içerisinde bir bardağı azar azar farklı saatlerde tüketin. Bu bağırsakta olan şişkinliye iyi gelir.\r\n★ Kalın bağırsak iltihabında üzüm suyu ve beyaz üzüm yemek faydalıdır.\r\n★ Onikiparmak bağırsak yarasını iyileştirmek için yalancı iğde yağı (içmek için) içmek ve meyvesinden 10-15 gün yemek gerekiyor.\r\n★ Bağırsak yarasında bir miktar eveliyi ılık suda yıkayın ve süzün. Üzerine inek sütü dökün ve kaynatın. Bunu 10-15 gün için.\r\n★ Kalın bağırsak iltihabı zamanı kuşburnu suyu ile bir kaç defa lavman yapmak iyi gelir.', '/images/blogs/1590589425.jpg', 1),
(8, 'İshal', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Vişne ağacının yapraklarını küçük parçalar halinde kesin ve demleyin. Günde bir kaç defa bir bardak içmek ishale iyi gelir.\r\n★ Sumak meyvesini ve yaprağını demleyin. Günde 3-4 defa bir bardak için. Bu kanlı ishale iyi geliyor.\r\n★ Kızılcıkların yumuşak meyvelerini temizleyin ve aynı miktarda yumurta sarısı ile ve balla karıştırın. Günde 3-4 defa, her defasında bir yemek kaşığı ishalı geçiriyor.\r\n★ Kanlı ishal zamanı taze fındık kabuğundan 25 gram bir bardak suda 10 dakika kaynatın ve süzün. Ondan günde 2 defa bir bardak için.\r\n★ Eğer ishal çok keskin değilse bir adet defne yaprağını bir bardak kaynar suda 10-15 dakika demleyin. Bir kaç defa sıcak için.', '/images/blogs/1590589775.jpg', 1),
(9, 'Kabızlık', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Kurutulmuş ve ezilmiş cehri kabuğunun 1 tatlı kaşığını 1 bardak kaynar suda demleyin. Sabah ve akşam bardağın üçde biri kadar içmek kabızlığa iyi geliyor.\r\n★ Bir kadar çiğ patatesi soyun ve kıyma makinesinden geçirin. Daha sonra sıkarak suyunu çıkarın. Onu sabah aç karna ve akşam yemekten sonra 1 bardak içmek kabızlığı yok ediyor (Her defasında yeni hazırlanmış olması gerekiyor).\r\n★ Buğday yarmasından pişirilmiş lapa kabızlığa iyi gelir.\r\n★ Büyük boy bir elmayı soyun ve rendeleyin. Onu bir bardak sütle karıştırın ve kısık ateşte 2 dakika kaynatın. Sonra 1 kaşık balla için. Günde bir defa tekrar edin.', '/images/blogs/1590590010.webp', 1),
(10, 'Şişkinlik', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Bir yemek kaşığı kurutulmuş ve öğütülmüş papatya çiçeğini bir bardak kaynar suda 10 dakika demleyin, günde 3 defa yemekten sonra yarım bardak için. Bu mideden gazın çıkmasına yardım ediyor.\r\n★ Mide gazı için 1 yemek kaşığı rezeneyi 1 bardak kaynar suda 10 dakika demleyin. Günde 3 defa yemekten sonra yarım bardak için.\r\n★ 10 gram nane yaprağını 1 bardak suda kaynatın ve günde 3 defa yemekten sonra için. Mide gazı kolaylıkla geçecektir.', '/images/blogs/1590590281.jpg', 1),
(11, 'Boğaz hastalıkları ve Nezle', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Yarpuzu (yabani nane) çiğnerseniz ve yerseniz boğaz iltihabına iyi geliyor. Tedavi 4-5 gün sürdürülmelidir.\r\n★ Bir yemek kaşığı yemek tuzu ve ya kaya tuzu, bir yemek kaşığı yemek için karbonat ile karıştırın ve 1 bardak ılık suya dökerek iyice karıştırın. Bu karışımla günde bir kaç defa gargara yapın.\r\n★ Bir yemek kaşığı balı aynı miktar kırmızı pancar suyuna katın ve günde 3-4 defa damlalıkla hər iki burun boşluğuna 5-6 damla damlatın. Nezleye iyi gelecektir.\r\n★ Nefes yolları hastalığında kaynatılmış patates buharının faydası oldukça fazla. Bunu uyguladığınız zaman hava geçmeyecek şekilde başınızı ve bir havlu ile kapatın.\r\n★ Anjina hastalığı için rendelenmiş 1 bardak pancar suyunu bir yemek kaşığı sirke ile karıştırın. Bunu günde 3 defa 1 tatlı kaşığı için.\r\n★ Balkabağını suda pişirin, aynı miktarda balla karıştırın. Ondan günde 3 defa her defasında bir yemek kaşığı yemek solunum sistemine faydalıdır.\r\n★ Üst solunum yolu hastalığında 1 bardak havuç suyuna 1 çay kaşığı bal katın ve günde 2 defa yarım bardak için.\r\n★ Uyuduğunuz zaman çorabın içine hardal tozu dökün ve giyinin. Bu nezleye faydalıdır.\r\n★ Eğer gripseniz sarımsağı temizleyin ve rendeleyin. Aynı miktarda balla iyice karıştırın. Gece uyumadan önce ondan bir yemek kaşığını bir bardak sıcak suya ekleyin, karıştırın ve iyice karışınca hemen için. Bir kaç gün sonra iyileşeceksiniz.\r\n★ Nezle için pancar suyu faydalıdır. Onu kaynatın ve suyundan günde 4-5 defa burun deliklerinize dökün.\r\n★ Ihlamur çiçeğinin 20 gramını bir bardak suda kaynatın ve onunla günde bir kaç deffa gargara yapın. Bu anjina, grip, nezle için faydalıdır.\r\n★ Nezle hastalığında kavrulmuş fındığa az miktar karabiber ekleyin. Bunu 1-2 gün yemek gerekiyor.\r\n★ Ses telleri zarar görürse suda 2-3 tatlı kaşığı kekik kaynatın. Ağız ve burunu bir kaç defa onun buharında bekletin.\r\n★ Karanfil çiçeğini demleyin ve için. Bu ses tellerinizi açar.', '/images/blogs/1590590638.jpg', 1),
(12, 'Kan basıncı (Tansiyon)', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Yoğurtu süzün ve suyunu günde bir defa içmek kan basıncını düşürür.\r\n★ Kan basıncı çok yükselince avuç içini, ayak altını, boyunu sirke ile ovun.\r\n★ Bir çay bardağı kadıntuzluğunu (sarıçalı) bir litre kaynar süte dökün ve 2 gün bekletin. Sonra onu süzün ve  bir - iki küp şekerle için. Bu kan basıncınızı düşürmek için etkili bir yöntemdir.\r\n★ Kan basıncınızı düşürmek için bir kumaş parçasını hardal suyuna batırın ve boyunun aşağısına yerleştirin. Tansiyonunuzun düştüğünü hissettiğiniz zaman hemen kumaşı çıkarın.\r\n★ Günde 100 gram ceviz çekirdeğini bir yemek kaşığı balla bir ay yemek kan basıncını düzenler.\r\n★ 20 gram dereotunu bir bardak kaynar suda çay gibi demleyin ve günde bir kaç defa için. Bu kan basıncını düşürür, kalp ritmini düzenler.', '/images/blogs/1590590909.jpg', 1),
(13, 'Kan ve Kansızlık (Anemi)', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ İncir reçeli, kurusu kansızlığa ve genel zayıflığa iyi geliyor.\r\n★ Kansızlık ve kan temizliği için şahtere otunun 20 gramını 1 bardak kaynar suda demleyin. Günde bir kaç defa için.\r\n★ Kan dolaşımı bozukluğu için aç karna bir diş sarımsak yemek gerekiyor.\r\n★ Kanın pıhtılaşmasını önlemek ve kan hastalığı için her gün maydanoz yemek gerekiyor.\r\n★ Kurutulmuş ısırgan otunun kökünün ve ya böğürtlen yaprağının 20 gramını bir bardak suda kaynatın ve için. Bu kanamayı durdurmaya yardım eder. \r\n★ Fındık kabuğunu yıkayın ve 50 gramını demlikte kaynatın ve süzün. Sonra günde 3-4 defa çay gibi sıcak ve yudum yudum için. Bu varisli damar genişlemesine ve iltihabına iyi gelir.  \r\n★ Kansızlığa badem, Antep fıstığı, 5-10 gün kiraz suyu içmek iyi gelir.\r\n★ Fındık yemek kansızlığa iyi gelir.\r\n★ Kansızlık ve kas zayıflığı için aç karna kırmızı elma yemek ve ara sıra elma suyu içmek faydalıdır.', '/images/blogs/1590591111.jpg', 1),
(14, 'Kalp-Damar hastalıkları', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Bir yemek kaşığı havuç tohumunu bir bardak suda kaynatın. Demliğı kalın bir havluya sarın ve 12 saat demlemeye bırakın. Sonra süzün ve günde 3-4 defa için. Bu anjina pektoris (göğüste ağrı, sıkışma ve baskı hissi) hastalığına iyi gelir.\r\n★  Gülhatminin kurutulmuş taç yapraklarıdan 20 gramını 200 gram kaynar suda çay gibi demleyerek günde 3 defa yarım bardak için. Bu kalbin hızlı çarpmasını önler.\r\n★  İncirin yeni yapraklaını ezin ve küçük parçalar halinde kesin. Onun 20 gramını bir bardak kaynar suda demleyin. Günde 3 defa yarım bardak için. Bu kalbe faydalıdır.\r\n★ 3 adet limonu, 1 yemek kaşığı şekeri, ya balı, bir yemek kaşığı kayısı kurusunu kıyma makinesinden geçirin ve karıştırın. Ondan her gün yemekten önce bir yemek kaşığı yemek kalp-damar hastalığına iyi geliyor.\r\n★ Bayılma hastalığı için 20-30 gram kadintuzluğu (sarıçalı) meyvesini 200 gram kaynar suda demleyin ve ya kaynatın. Daha sonra süzün. Günde bir kaç defa bardağın yarısı kadar için.\r\n★ Farklı kalp ağrılarında aynı miktarda ayva ağacının yaptraklarını ve mısır püskülünü küçük parçalar halinde kesin ve karıştırın. Onun 20 gramını bir bardak kaynar suda demleyin. Bundan günde bir kaç defa çay gibi için.\r\n★ Günde 100 gram çökelek yemek kalp-damar hastalıklarına iyi geliyor.\r\n★ Olgunlaşmış ayvayı soyun ve iyice ezin. Suyunu çıkarın. 2 gün beklettikten sonra ona sirke ve şeker katın ve karıştırın. Günde 3 defa, her seferinde 1 yemek kaşığı tüketin. Bu bayılma hastalığına iyi geliyor.\r\n★ Atkuyruğu otunun demlenmiş suyundan 10 damla ılık suya karıştırın. 5-10 gün için.\r\n★ Kalp hastalığı için karpuzun kabuğunu kurutun ve ezerek toz haline getirin. Sonra günde 1 yemek kaşığı yarım bardak ılık suya katın ve 5-10 gün için.\r\n★ Yolculuk yaparken mide bulantısını engellemek için zencefil çiğneyin.', '/images/blogs/1590591938.webp', 1),
(15, 'Karaciğer', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ 1 yemek kaşığı kişniş tohumunu ezin ve bir bardak kaynar suya dökün. Üstünü örtün ve 20 dakika sonra sargı bezinden süzün. Günde 3 defa, her defasında 2 yemek kaşığı içmek karaciğere iyi gelir.\r\n★ Karahindiba bitkisinin çiçeğinden toplayın ve açık havada kurutun. Sonra toz halinde 2 yemek kaşığını bir bardak kaynar suda demleyin. Ondan sabah ve akşam yemekten 15-20 dakika önce yarım bardak içmek karaciğere iyi geliyor.\r\n★ Karaciğer ağrılarında cevizi kırın ve çekirdeklerinin arasındaki perdeleri çay gibi demleyin. Bir kaç defa içmek faydalıdır.\r\n★ Karaciğer hastalığına havuç, kiraz ve elma yemek, nar suyu içmek faydalıdır.\r\n★ Karaciğer hastalığı için 5-10 gün Antep fıstığı yemek faydalıdır.', '/images/blogs/1590598644.webp', 1),
(16, 'Safra kesesi ve İdrar yolu', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Kimyon bitkisinin köklerini ve yapraklarını küçük parçalar halinde kesin. Ondan 20 gram 1 bardak suda 15-20 dakika demleyin. Bundan günde sabah ve akşam çay gibi 2 bardak için. Bu safra kesesinde taş oluşumunu önler ve safra yolu hastalıklarını tedavi eder.\r\n★ 20 gram mısır püskülünü 1 bardak suya katın ve 1 saat kaynatın. Süzdükten sonra günde 4 defa, her defasında 2 yemek kaşığı için.\r\n★ Günde bir kaç defa yarpuz (yabani nane) yemek ve çay gibi demleyerek içmek safra yollarını temizler ve taşları temizler. Bu tedavi süreci 1 aydır.\r\n★ Her sabah aç karna 3-4 tane sinirotu yaprağı yemek safra kesesi hastalarına iyi gelir.\r\n★ Kurutulmuş eveliyin 50 gramını küçük parçalar halinde kesin ve bişirin. Ondan günde 1 defa sulu sulu yemek safra kesesine faydalıdır.\r\n★ Kuşburnu bitkisinin kurutulmuş meyvesinin 30 gramını 200 gram kaynar suda 15 dakika demleyin. 24 saat bekletin, sıkın ve süzün. Bunu günde 2 defa yarım bardak için. Bu safra yolunu temizler.\r\n★ Safra kanalı tıkanınca yer sarmaşığını küçük parçalar halinde kesin ve 20 gramını 200 gram kaynar suda 15-20 dakika demleyin. Sonra günde bir defa bir bardak için. Bu safra yollarını açmakta yardımcı olacaktır.\r\n★ Safra kesesinin normal çalışması için ara sıra şeftali suyu içmek iyi geliyor.\r\n★ Safra kesesinde taş olduğu zaman yemekten yarım saat önce bitki yağı için. Yarım tatlı kaşığından başlayın. Zamanla yarım çay bardağı kadar içebilirsiniz. Tedavi 2-3 hafta devam ediyor. Bu safra kesesi taşının cerrahi yolla değil, kendiliğinden düşmesini sağlar. Ayrıca mide ülserine de iyi gelir.\r\n★ İdrar yollarının iltihabı zamanı reyhan yaprağından 2 demet kaynatın ve süzün. Suyundan 5-6 gün bir defa yarım bardak için.\r\n★ İdrar yollarını temizlemek için kekiği rezeneye katın ve kaynar suda ıslatınz, süzün. Günde bir kaç defa bir bardak için.\r\n★ İdrar kesesini temizlemek için ısırgan tohumunu tatlı meyan kökü ile birlikte kaynatın ve süzün. 5-10 gün günde bir bardak için.', '/images/blogs/1590599375.jpg', 1),
(17, 'Sarılık', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Karahindiba meyvesini ezin ve suyunu çıkarın. O sudan her iki burun deliğinize 6 damla damlatın. İşlem sırasında hasta sırtüstü uzanmalı, işlem bitince hemen yüzüstü uzanmalıdır.', '/images/blogs/1590599572.jpg', 1),
(18, 'Dalak', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Aynı miktarda yarpuzu (yabani nane) ve naneyi ezin, şeker ekleyin ve kaynatın. Bu melhemi dalağın üzerine sürün ve sarın. 5-6 sargıdan sonra hasta iyileşir.\r\n★Dalak ağrısı için kırmızı turpu ezin ve çamaşır sabunu ile kaynatın. Akşamlar 2-3 gün ağrıyan bölgeye koyun ve sarın.', '/images/blogs/1590599787.jpg', 1),
(19, 'Böbrek hastalıkları', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Her sabah bir yemek kaşığı zeytin yağı için. Bu böbreğin iyileşmesine yardım ediyor.\r\n★ Fındık ağacının kabuğunu soyun ve yakın. Onun külünün bir yemek kaşığını bir bardak suya katın. Bu böbrek taşlarının küçülmesine etki eder.\r\n★ Yarpuzun (yabani nane) kurutulmuş yapraklarından 20 gramını bir bardak kaynar suda 15-20 dakika demleyin. Günde bir kaç defa çay gibi için. Bu böbrek ağrılarına iyi geliyor.\r\n★ Eğer böbrekleriniz iltihap kaparsa bir bardak keçi sütüne 3 kaşık bal ekleyin ve iyice karıştırın. Bundan günde 3 defa, her defasında yarım bardak için. 1 haftaya etkisini gösterecektir.\r\n★ Böbrekte kum varsa bir hafta her gün aç karna karpuz yemek gerekiyor. Sonraki bir hafta aç karna armut yemek gerekiyor.\r\n★ Tam olgunlaşmış  ardıç meyvesinin 5 gramını bir bardak kaynar suda 15-20 dakika demleyin. Günde 3 defa 1 bardak için.\r\n★ Kabak çekirdeğinden 30 gram 1 bardak kaynar suda 15-20 dakika demleyin ve süzün. Yarı bölerek bir günde iki defa içmek böbrek ağrılarına iyi geliyor.\r\n★ İncir kurusunu küçük parçalar halinde kesin ve 30 gramını 400 gram suda (süt olursa daha iyi olur) kısık ateşte 10 dakika kaynatın. Ondan günde 3 defa, her defasında yarım bardak içmek böbrek hastalığına iyi gelir.\r\n★Böbrek ağrılarını sakinleştirmek için küçük ayva yapraklarını küçük parçalar halinde kesin ve 20 gramını bir bardak kaynar suda 20 dakika demleyin. Günde 3 defa, her defasında bir bardak için.\r\n★ Kurutulmuş mısır püskülünü küçük parçalar halinde kesin. Aynı miktarda kuşburnu meyvesi ile karıştırın. Onun 20 gramını bir bardak kaynar suda 15-20 dakika demleyin ve süzün. Günde 3 defa, her defa 1 bardak için. Böbrek ağrılaına iyi geliyor.\r\n★ Aynı miktarda kabak ve havuçu ayrı pişirin ve sonra birlikte karıştırın. Üzerine aynı miktarda bal dökün ve yeniden karıştırın. Ondan günde 3 defa 2 yemek kaşığı yemek böbrek hastalığı için faydalıdır.\r\n★ Aynı miktar şeftali meyvesinin suyunu yarpuz (yabani nane) suyu ile karıştırın. Günde 3 defa bir bardak için. Bu böbrek taşı için faydalıdır.\r\n★ Böbrek taşı için yarpuz (yabani nane), dereotu, rezene, salatalık, mercimek ve kimyon yemek iyidir.\r\n★ Böbrek taşını parçalamak için ebegümeci bitkisinin tohum ve yapraklarından bir-iki demet ezin. Tereyağı ve balla karıştırın. 5-10 gün yemek faydalıdır.', '/images/blogs/1590603388.jpg', 1),
(20, 'Mesane hastalıkları', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Kimyon meyvesinden 50 gram, 200 gram kaynar suda 20 dakika demleyin ve sonra süzün. Günde 3 defa için. Bu idrar söktürücü tedavidir.\r\n★ Acı bakla bitkisini bir kaç gün yemek idrar akışını temizliyor ve ağrıları kesiyor.\r\n★ İdrar yanması sorunu için beyaz arpa kaynatın, süzün. Suyundan günde bir kaç defa için.\r\n★ Keçi sütünü günde bir kaç defa, her defasında bir bardak sıcak içmek idrar kesesinin ağrılarını geçirir.\r\n★ Aynı miktarda rezene ve kekiği küçük parçalar halinde kesin ve bir bardak sıcak suda uzunca karıştırın, süzün. Bundan günde 3 defa bir bardak için. Mesanede toplanan sıvıyı temizler.\r\n★ Eğer idrar tutukluğu sorununuz varsa salatalığın ve kaynatılmış arpanın aynı miktarda suyunu pekmeze katın, karıştırın ve 5-6 gün ondan her defasında yarım bardak için.\r\n★ Bir litre kaynar suda 40 gram yulaf samanı demleyin ve süzün. Ondan günde bir kaç defa bir bardağa kadar için. Bunun sayesinde idrar vücudu hızla terk edecek.\r\n★ İdrar yapamayanlar için günde bir kaç defa çiğ halde balkabak yemek faydalıdır.\r\n★ İdrar kesesinin tahriş olması ve aniden idrar yapamama durumunda mısır püskülünü doğrayın. Bir bardak kaynar suda 15-20 dakika demleyin ve her sabah aç karna 1 bardak için.\r\n★ İdrar yolu iltihabı için reyhan bitkisinin yapraklarından 2 demet kaynatın ve sonra süzün. Suyunu 5-6 gün, günde bir kaç defa 100 gram bardakta için.\r\n★ İdrar kesesini temizlemek için ısırgan tohumunu tatlı meyan kökü ile birlikte kaynatın ve süzün. 5-10 gün günde bir bardak için.\r\n★ İdrar yolu ve böbrek hastalığı için atkuyruğu otunu kaynatın ve süzün. 3-5 gün, günde 2-3 yemek kaşığı için.', '/images/blogs/1590603727.jpg', 1),
(21, 'Burun', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Yarpuz (yabani nane) yemek ve onu koklamak burun iltihabını iyileştirir.\r\n★ Burun tıkanması için aloe vera bitkisini bir demir parçasının üzerinde yakın ve burnunuzu onun buharına tutun.\r\n★ Eğer burnunuzun içi kurursa 2 gram menekşe yağını burun deliklerinize sürün ve bunu bir kaç defa tekrar edin.\r\n★ Burun kanamasını durdurmak için sirke ile ıslatılmış tamponu burun deliklerinize yerleştirin.\r\n★ Nane suyunu balla karıştırılmış suya katın ve ağrıyan burnunuza damlatın.\r\n★ Burundan gelen şeffaf sıvı akıntısı için 20 gram papatya çiçeğini bir bardak kaynar suda demleyin, soğuduktan sonra onu ocağın üstüne koyun ve bir litreye ulaşana kadar su ekleyin. Onun buharı ile burundan nefes alın.', '/images/blogs/1590604146.jpg', 1),
(22, 'Kulak', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Acı badem yağını damlalık ile bir kaç defa kulağa damlatın. Bu başta olan uğultuya iyi geliyor. Bir kaç defa tekrar etmek gerekiyor.\r\n★ Kulakta çınlama ve iltihap için soğanı küçük parçalar halinde kesin, ezin ve sıkın. Suyunu günde iki defa kulağınıza damlatın.\r\n★ Sinir otunu ezin ve suyunu çıkarın. Ondan bir kaç damla kulağa damlatmak kulak ağrısına iyi geliyor.\r\n★ Kulak ağrısını ve şişkinliğini tedavi etmek için soğan ve beyaz turpu birlikte ezin ve kaynatın. Sargı bezi ile  kulağa bağlamak gerekiyor. Bir kaç gün tekrar edilmesi gerekiyor.', '/images/blogs/1590604435.jpg', 1),
(23, 'Göz', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Zencefili çay gibi demleyin ve için. Ya da bir süre kaynatın ve karıştırın. Sürme gibi gözünüze sürün. Bu görme yeteneğini artırır.\r\n★ Kuşkonmazı süt ya su ile pişirin. Günde bir kaç defa yemek göz için faydalıdır.\r\n★ Eğer gözünüz sulanıyor, güçlü ışıktan kamaşıyorsa ve ağrıyorsa çiğ patatesi kıyma makinesinden geçirin ve sargı bezi ile gözünüzü bağlayın. Bu sorunlar geçene kadar tedaviye devam edir.\r\n★ Göz sulanması sorunu için gözünüze bal sürmek iyi gelecektir.\r\n★ Taze soğanı ezini ve balla karıştırın. Kiprik diplerine sürün. Bu görme yeteneğinizi iyileştirir.\r\n★ Beyaz turpun yapraklarını yemek görme yeteneğini iyileştirir.\r\n★ Günde 3-4 kaşık balık yağı görme yeteneğini iyileştirir.', '/images/blogs/1590604949.jpeg', 1),
(24, 'Diş', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Kurutulmuş yarpuzu (yabani nane) yakın ve külünü diş etine sürün. Bu dişleri güçlendirir.\r\n★ Diş boşluğunu temizleyin ve oraya tuza batırılmış nemli pamuk yerleştirin. Bu diş ağrısını sakinleştirir.\r\n★ Bir diş sarımsağı pişirin ve boşluk olmayan ağrıyan dişe sürün. Diş ağrısına iyi geliyor.\r\n★ Diş ağrısı için böğürtlen yapraklarını ezin ve dişin ağrıyan yerine yerleştirin.\r\n★ Sinir otunun bir kaç taze yaprağını ağrıyan diş tarafındaki kulağa bir bez yardımı ile sarın. Yarım saat sonra diş ağrısını kesecektir.\r\n★ Tarhun çiğnemek ve diş etine sürmek kanamayı durdurur.\r\n★ Diş etinden kan gelince ısırgan tohumlarını kaynatın ve süzün. Bir kaç gün onunla gargara yapın.\r\n★ Ağız kokusu için böğürtlen yaprağını ve ya olgunlaşmış meyvesini ara sıra yemek gerekiyor.', '/images/blogs/1590605086.jpg', 1),
(25, 'Egzama, Kaşıntı, Terleme', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Ardıç ağacının tohumunu ve yapraklarını kaynatın. Parmak aralarında oluşan kaşıntı, leke ve iltihabları, terlemeyi tedavi eder.\r\n★ Arpanın üzerine sirke dökün ve kaynatın. Bunu bedeninizin kaşınan bölgesine sürün.\r\n★ Deride oluşan egzama için bir kaç kekik kaynatın ve onu egzamalı bölgelere sürün.\r\n★ Kınayı aynı miktarda tereyağı ile karıştırın. Egzamalı bölgeye sürün.\r\n★ Mısırı pişirin, ezin ve hamur haline getirin. Sirke ekleyin ve yoğurun. Derinin çatlamış ve kaşınan bölgelerine yerleştirin. Yara iyileşene kadar tedaviye devam edin.\r\n★ Aynı miktarda hünnap ve kekiği karıştırın, kaynatın. Bundan günde 3 defa, her seferinde yarım bardak için. Bu deri kaşıntısına iyi geliyor.\r\n★ İncirin kurutulmuş yapraklarını yakın ve külünü tereyağı ile karıştırın. Deri yaralarına sürün.\r\n★ Vücudun daha fazla terleyen bölgesine zeytin yağı sürün. Bir kaç gün sonra etkisini gösterecektir.\r\n★ Yüzde kabuklanma zamanı yüzünüzü incir suyu ve ya yapraklarını sıkarak aldığınız su ile silin.\r\n★ Karahindiba ezin ve suyunu çıkarın. Sonra yüzdeki lekeleri ve çilleri silin. Bunu bir kaç gün tekrar edin. Bu lekeleri ve çilleri temizler.\r\n★ Derideki kırışıklıkları, sivilceleri, kızarıklıkları, egzamayı yok etmek için rendelenmiş havuçu sorunlu bölgelere sürün.\r\n★ 200 gram kuşburnu, 100 gram kurutulmuş ısırgan ve 2 ceviz kabuğunu birlikte ezin ve yarım litre suya dökün. 10 dakika kaynatın. 1 gün bekletin ve sonra süzün. 2 yemek kaşığını  50 gram quark peyniri (lor, kesmik) ile karıştırın. Bunu günde 3 defa egzamalı deriye sürün ve 20 dakika bekletin. Bu egzama için çok etkili bir tedavidir.\r\n★ Soğanı ezin ve sıkın. Onu balla karıştırın. Deride olan mantara sürün.\r\n★ Eğer ayağınız ve koltukaltınız kokuyorsa oraya meyan yaprağı sürün ve ya o bölgede bekletin.\r\n★ Limonu soyun ve dilimleyin. Ezerek suyunu çıkarın. Bu egzama kaşıntılarına, mantar hastalıklarına iyi geliyor.\r\n★ Kekiğin hünnap ile karıştırılmış suyunu bir kaç gün için. Bu vücuttaki kaşıntıya iyi geliyor.\r\n★ Vücut kaşıntıları için 1 bardak kişniş suyu içmek ve ıspanağı pişirip yemek iyi geliyor.', '/images/blogs/1590605370.jpg', 1),
(26, 'Yanıklar', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Lahanayı iyice ezin ve yumurta akı ile karıştırın. Derinizde olan yanıklara sürün. Bir kaç gün sonra etkisini gösterecektir.\r\n★ Vücudunuzda yanıklar varsa üzerine bal sürün.Bu ağrılarınıza iyi gelecektir.\r\n★ Yaranın sulanmaması için zeytinyağına tuz katın ve yaraya sürün.\r\n★ Ateşin ve kaynar suyun sebep olduğu yanıklar için yumurta akını kullanın. Onu iyice çırpın ve yanıklara sürün.\r\n★ Balık yağını aynı miktarda yumurta akı ve balla karıştırın. Günde 3 defa yanıklara sürün.\r\n★ Kuru ısırganı toz haline getirin ve tereyağı ile karıştırın.  Yanıklara sürün.', '/images/blogs/1590605657.jpg', 1),
(27, 'Sedef hastalığı', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ İki bardak suya bir bardak karabuğday ekleyin ve kaynatın. Sonra bunu yaraya sürün.\r\n★ Olgunlaşmış limonu sedefli bölgeye sürmek iyi geliyor.\r\n★ Kuru üzümü ikiye bölün ve iç kısmını sedefli bölgeye sürün. Bu çok etkili bir yöntemdir.', '/images/blogs/1590605807.jpg', 1),
(28, 'Şeker hastalığı (Diyabet)', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Kanda olan şeker oranını azaltmak için her sabah aç karna 2 yemek kaşığı koruk suyu içmek gerekiyor.\r\n★ Şeker miktarını azaltmak için meşe palamudunu öğütün ve ondan 1 yemek kaşığı ayırın. Onu 1 bardak kaynar suda demleyin ve süzün. Bundan günde 3 defa 1 yemek kaşığı için.\r\n★ Sumak yemek diyabete iyi geliyor.\r\n★ Kurutulmuş ve küçük parçalar halinde kesilmiş mısır püskülünün 10 gramını bir buçuk su bardağı suda 30 dakika kaynatın ve süzün. Günde 3 defa yarım bardak için.\r\n★ Kuru ceviz yaprağının 60 gramını ovun ve 1 litre suda 30 dakika kaynatın. Sonra süzün. Günde 3 defa yemekten sonra yarım bardak içmek şekeri düşürür.\r\n★ Kurutulmuş 100 gram fasulye kabuğunu ovun ve 1 litre suya dökün. Yarısı kalıncaya kadar kaynatın ve süzün. Bunu günde 3 defa, yemekten yarım saat önce yarım bardak için. Çok etkilidir.\r\n★ Fasulye kaynatın ve süzün. Suyunu her sabah aç karna bir yemek kaşığı için. Bu diyabet hastalarına iyi geliyor.\r\n★ 15 adet defne yaprağının üzerine 1 litre kaynar su dökün ve 10 dakika demleyin. 1 saat demde bekletin ve süzün. Bu diyabetten dolayı oluşan susuzluğa iyi geliyor. Susayınca ondan 1-2 yudum için. Bu rahatsızlığınız geçtiği zaman tedaviyi durdurun.\r\n★ Günde bir defa sarımsak yemek kanda şekeri azaltır.\r\n★ Taze lahanayı ezin, sıkın ve suyunu çıkarın. Yemekten önce günde 3 defa, her defasında bir bardak için. Şeker oranını azaltır.\r\n★ Kabak suyunu günde 3 defa yemekten önce içmek diyabet hastalığına faydalıdır.\r\n★ Düzenli olarak ceviz yemek diyabet hastaları için faydalıdır.\r\n★ Dut şeker ve kan hastalıkları için faydalıdır. Karadut kanı temizler.', '/images/blogs/1590606144.jpeg', 1),
(29, 'Zehirlenme', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Kabak suyunu içmek ya da çiğ kabak yemek zehirli maddeleri vücuttan atar.\r\n★ Zehirlenme zamanı defne yaprağını demleyin ve belirli aralıklarla için.\r\n★ Yılan, arı sokarsa acilen o bölgeye sinir otunu ezin ve yerleştirin. Hemen zehri çıkaracaktır.\r\n★ Balıktan zehirlenen birini hemen kusturmak, vücudunu sirke ile silmek ve sıcak yatağa uzatmak gerekiyor.', '/images/blogs/1590606701.jpg', 1),
(30, 'Soğuk algınlığı', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Soğuk algınlığı için 2 yemek kaşığı hardal tohumunu 3 yemek kaşığı buğday unu ile karıştırarak üzerine su ekleyin, lapa hazırlayın. Onu hastanın sırtına sürtün. Hastanın sırtı kızarınca ve sızlayınca karışımı temizleyin. Hastayı sıcak tutacak bir şeyler giydirin ve yatağa uzatın.\r\n★ Ihlamur çiçeğini demleyin ve günde 3-4 defa için.\r\n★ Ahududu yaprağının 20 gramını bir bardak kaynar suda demleyin. Ondan günde 3-4 bardak için. Bu soğuk algınlığına çok iyi geliyor.\r\n★ Ayrıca ahududu yemek ya da ahududu çayı içmek soğuk algınlığına iyi gelir.', '/images/blogs/1590606915.jpg', 1),
(31, 'Verem (Tüberküloz) ve Plörezi', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Akciğer tüberkülozu için 15 gram sarısabır suyunu, 100 gram tereyağını, 100 gram balı, 10 gram kakao tozunu birlikte karıştırın. Günde 2-3 defa bir yemek kaşığını bir bardak suya katın ve için.\r\n★ Tüberkülon için kırmızı pancar suyunu aynı miktar balla karıştırın. Günde 3 defa bir yemek kaşığı için.\r\n★ Verem ve kansızlığa eşek ve keçi sütünü birlikte pişirmek, bir kaç gün içmek faydalıdır.\r\n★  Plörezi hastalığı için rezene tohumu ve ya kökünü kaynatın. Suyundan 10-15 gün, günde bir bardak için.', '/images/blogs/1590607091.jpg', 1),
(32, 'Basur (Hemoroid)', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Böğürtlen yaprağını ezin ve pişirin. Sonra kanlı basurun üstüne koyun. Basur daha çabuk iyileşecek.\r\n★ Basur ağrıları zamanı 20-25 defne yaprağından 3 litre kaynar suda 2 saat demleyin. Günde bir kaç defa içmek gerekiyor. \r\n★ Bir miktar nar kabuğunu böğürtlen yaprağını ile birlikte üzerine su ekleyin ve pişirin. Onunla basuru yıkayın. Bunu bir kaç defa tekrar edin.\r\n★ İki demet yarpuzu (yabani nane) suda kaynatın ve süzün. Ona yarım bardak nar suyu ekleyin ve hafta boyunca günde 2 defa bu karışımla ılık halde basuru yıkayın.\r\n★ Ardıç ağacının meyvesini ezin ve sonra saf beyaz balla karıştırın. 4-5 gün basur yarasına sürün.', '/images/blogs/1590607304.jpg', 1),
(33, 'Vücuttan fazla tuzun atılması', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Vücuttan tuzun atılması için 30 gram havuçu, 100 gram pancarı, 100 gram salatalık suyunu karıştırın. Günde 3 defa, her seferinde bardağın üçte biri kadar için. Tedaviye 1 ay devam edin.\r\n★ Böbreklerde ve eklemlerde birikmiş tuzu vücuttan atmak için turp suyunu aynı miktarda balla karıştırın. Bundan günde 3 defa, her defasında yarım bardak için.\r\n★ Eklemlerde birikmiş tuzu temizlemek için bir bardak pirinçi bir gün suda dinlendirin. Sonra aynı suda tuzsuz olarak kaynatın. Onu yarıya bölün. Tuzsuz bir şekilde günde 2 defa yemek gerekiyor.', '/images/blogs/1590607825.jpg', 1),
(34, 'Yara, Sivilce, Şişkinlik, Nasır ve Uçuk', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Böğürtlen meyvesini ezin ve yaranın üzerinde bekletin.\r\n★ Tereyi tuzlu suda kaynatın, ezerek suyunu çıkarın. Onu sivilcelere sürün. Bir kaç defa sonra sivilceler geçecek.\r\n★ Kayısıyı ezin ve sirke ile karıştırın. Sivilcelere sürün.\r\n★ Isırgan yapraklarını ezin ve suyunu uçuklara sürün.\r\n★ Havuçu ezin, günde 2 defa açık kanlı ve iltihaplı yaraya sürün.\r\n★ Yarpuzu (yabani nane) kaynatın ve süzün. Aynı miktarda nar suyu ekleyin ve karıştırın. Bunu yaraya sürün ve yaralı bölgeyi sarın.\r\n★ Geç iyileşen yara için yarayı yıkamadan onun üzerine hemen şeker tozu dökün ve pamuk koyun. ★ Daha sonra sargı bezi ile sarın. Yara bir kaç gün sonra iyileşecek.\r\n★ İltihablı yanık yaraları için sarı kantaronu ezin ve 5-6 gün, günde bir defa yaraya sürün.\r\n★ Çiğ patatesi ezin ve ya kıyma makinesinden geçirin ve onu şişliklerin üzerine koyun.\r\n★ Vücudunuzun herhangi bir bölgesinde şişkinlik olursa lahana yaprağını bir kaç dakika kaynar suda bekletin ve sonra çıkarın. Şişlik olan bölgede bekletin.\r\n★ Aynı miktarda buğday unu ile  balı karıştırın. Bir kaç gün şişlik olan bölgeye koyun ve sarın.\r\n★ Sirke ile şişkinliği silerseniz şişkinlik yaraya dönüşmeden iyileşir.\r\n★ Reyhanı ezin ve şişkinliğin üzerine sürün ve sarın. Bu şişkinliği azaltacak.\r\n★ Yeşil çay içmek deride şişkinliğin büyümesini önler.\r\n★ Nasırı yok etmek için her akşam pamukla ayçiçek yağı sürün.\r\n★ Elde ve ayakta olan nasırı bir haftaya incirle de yok etmek mümkün.\r\n★ Uyumadan önce ayağınızı sıcak su ile yıkayın ve kurulayın. Bir dilim limonu nasırın üzerine koyun ve sarın. 3 gece bunu tekrar edin. Nasırdan kurtulacaksınız.\r\n★ Pancar yaprağını pişirin. Onu sivilcenin üzerine koyun. Bunu bir kaç defa tekrar edin. Sivilce yok olacaktır.\r\n★ Vücutta şişkinliği azaltmak için beyaz turpu rendeleyin ve balla karıştırın. Bir kaç gün şişkinlik olan bölgeye sürün.', '/images/blogs/1590610232.jpg', 1),
(35, 'Kangren, Gut, Siğil ve Çatlak', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Olgunlaşmamış incirin sütünü sabah ve akşam siğile sürerek onu temizleyin.\r\n★ İncir yapraklarını ezin ve suyunu siğile sürün. Bir kaç defa tekrarlamak siğili koparıyor.\r\n★ Lahananın üst yapraklarının suyunu çıkarın. Pamukla siğili temizleyin. Siğil kopana kadar bu işlemi tekrar edin.\r\n★ Isırganı ezin ve balla karıştırın. Siğile sürün.\r\n★ Beyaz turpun tohumunu toz haline getirin ve onu sirke ile karıştırın. Kangrenin üzerine sürün ve sarın. Tedaviye her gün devam ederseniz yavaş yavaş iyileşeceksiniz.\r\n★ Pancarın kökünü ve yaprağını kaynatın. Onun suyu ile yaralarınızı ve çatlaklarınızı silin.\r\n★ Muşmula gut hastalığına iyi geliyor.\r\n★ Sirke ile kükürtü karıştırın ve gut olan bölgeye sürün. Hastalık iyileşecektir.', '/images/blogs/1590610994.jpg', 1),
(36, 'Romatizma', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Zencefili aynı miktarda fındıkla ezin ve bir o kadar balla karıştırın. Bundan günde 3 defa ceviz kadar yemek gerekiyor. Tedaviyi tamamen iyileşene kadar devam ettirin. Bu hem romatizma, hem omurga ve eklemler için faydalıdır.\r\n★Leylak bitkisinin suyunu sıkın. O sudan 30 gram aynı miktarda mersin yaprağının suyu ile karıştırın. Ondan günde 3 defa, her defa 2 yemek kaşığı için. İyileşene kadar devam edin.\r\n★ Günde 2 bardak kekik çayı romatizmaya iyi gelir.\r\n★ Beyaz turpu ezerek suyunu çıkarın. Günde bir kaç defa romatizmalı bölgeye masaj yapın ve pamuğu iyice turp suyuna batırın ve aynı bölgeye koyarak sarın.', '/images/blogs/1590611143.jpg', 1),
(37, 'Radikülit', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Omurga ve eklem ağrılarında gül ile balı karıştırın. Bir kaç gün ağrıyan bölgelere sürün.', '/images/blogs/1590611273.jpg', 1),
(38, 'Eklem ağrıları', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Yarpuzu (yabani nane) doğrayın ve 60 gramını bil litre suda demleyin. 10-15 dakika üstünü kalın havlu ile kapatın. Sonra günde 3 defa, her defasında bir bardak için. 1 haftaya etkisini gösterecek.\r\n★ Lahanayı doğrayın ve kaynatın. Suyunu sıcak sıcak pamukla ağrıyan bölgelerde bekletin. Bunu bir kaç gün tekrar edin.\r\n★  Gülhatminin 30 gramını bir bardak inek sütünde kaynatın. Bunu ağrıyan bölgelere sürün ve masaj yapın. Tedaviyi günde 3 defa tekrarlayın. Bir kaç gün sonra etkisini gösterecektir.\r\n★ Omurga ağrısı için sarımsağı ezin ve aynı miktarda zeytinyağı ile karıştırın. Bunu omurgaya sürerek masaj yapın. Bunu bir kaç defa tekrar edin. Bu ağrılara iyi geliyor.\r\n★ Hardal ve pancar yemek kulunç ağrılarını önler.', '/images/blogs/1590611472.jpg', 1),
(39, 'Felç ve Epilepsi', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Tarçın yağını vücudun felç olan bölgesine masaj yapın. Bu felç tedavisinde yardımcı olur.\r\n★ Karabiberi zeytinyağında kısık ocakta kaynatın. Bunu felç olan kısımlara sıcak şekilde sürün. Etkilidir.\r\n★ Fındık yağı yüz ve göz felcinde etkilidir. Günde 3 defa, her defa 20 damlasını suya katın. İçin ya da gerekli bölgelere sürün.\r\n★ Epilepsiyi önlemek için ocakta patates pişirmek ve yemek gerekiyor.\r\n★ Epilepsi için bir avuç kuşburnu meyvesini bir litre kaynar suda demleyin. Günde 3 defa, her defasında 1 bardak için.', '/images/blogs/1590611757.jpg', 1),
(40, 'Ateroskleroz', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Ağır ateroskleroz hastaları için kurutulmuş yonca yapraklarını ovarak onun 20 gramını yarım litre kaynar suda 40 dakika demlemede bekletin. Ondan günde bir defa, yarım bardak içmek gerekiyor. Akşam uyumadan önce içmek daha faydalıdır.\r\n★ Ateroskleroz hastalığı için her sabah aç karna bir yemek kaşığı ayçiçek yağı içmek faydalıdır, ancak yağın eski olmaması gerekiyor. Tedavi 1-2 ay devam ettirilmelidir.\r\n★ Beyin damarlarının aterosklerozu için soğan suyunu aynı miktarda balla karıştırarak her saatte bir, bir tatlı kaşığı içmek gerekiyor.\r\n★ Günlük 150 gram süzme yoğurt yemek ateroskleroz için çok etkilidir.\r\n★ Patlıcan da ateroskleroza iyi geliyor.\r\n★ Tedavi sürecinde hünnap meyvesi tüketmek faydalıdır.', '/images/blogs/1590611977.jpg', 1),
(41, 'Sinir hastalığı ve uyku', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Yavşan (Pelin) bitkisinin uç kısmını küçük parçalar halinde kesin ve onun bir yemek kaşığını bir bardak kaynar suda demleyin. Süzün ve akşamlar ondan yarım bardak için. Bu sizi sakinleştirecek ve uykunuzu getirecektir.\r\n★ Aynı miktarda yarpuzu (yabani nane) ve kekiği küçük parçalar halinde kesin ve onun 20 gramını bir bardak kaynar suda 10-15 dakika demleyin. Günde 3 defa, her defasında yarım bardak için. Bunu 2 hafta devam ettirin. Bu sizi sakinleştirecek ve uykunuzu getirecektir.\r\n★ Kurutulmuş rezeneyi ovun ve onun 20-30 gramını 1 litre suda ısık ateşte kaynamaya başladıktan bir dakika sonra ocaktan alın. 10 dakika demlemede bırakın. Yemekten biraz sonra bir bardak için. 10-15 gün devam edin.  Bu sizi sakinleştirecek ve uykunuzu getirecektir.\r\n★ Uyumadan önce pancar suyunu aynı miktarda balla karıştırın ve için. Bu kan basıncını düşürür,  sakinleştirir ve uykunuzu getirir.\r\n★ Uykusuzluk için  günde bir kaç defa marul yemek gerekiyor. 1-2 hafta yemek gerekiyor.\r\n★ Bir bardak kaynar suya 2-3 adet menekşe yaprağı ekleyin. 10 dakika demleyin. Süzün ve bir tatlı kaşığı balla karıştırın, için. Bu uykunuzu getirecektir.\r\n★ Her gün portakal ve mandalina yemek veya suyunu içmek sinir ve gerginliğe iyi gelir.\r\n★ Uykusuzluk için 2-3 gün her akşam bir bardak turp suyu için.\r\n★ Zaman zaman elma ve şeftali yemek sinir hastalığına iyi gelir.', '/images/blogs/1590612446.jpg', 1),
(42, 'Baş ağrısı, Sinüzit', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Baş ağrısı şiddetlendiği zaman pamuğu pancar suyu ile ıslatın ve onunla kulağınızı tıkayın.\r\n★ Safran suyunu burnunuza sürün. Bu baş ağrısına iyi gelir.\r\n★ Hardalı bir kumaşın üzerine sürün ve migren ağrısının olduğu bölgeye koyun. Bu etkili bir yöntemdir.\r\n★ Zihinsel gerginlik sonrası başınız ağrıyorsa kahve veya siyah çay içmek iyi gelir.\r\n★ Baş ağrısı zamanı 2-3 diş sarımsak yemek iyi gelir.\r\n★ Eğer başınız düzenli olarak ağrıyorsa günde 2-3 defa yemekten sonra, her defasında yarım bardak taze lahana suyu için.\r\n★ Yemekten 1 saat önce günde 3 defa yarım bardak yeni hazırlanmış patates suyunu düzenli olarak içerseniz baş ağrınız 3-4 hafta sonra tamamen geçer. \r\n★ Baş ağrısı zamanı lahananın üst yapraklarını alın, boyun arkasına ve başa koyun ve sarın.\r\n★ Kırmızı erik suyunu günde bir kaç defa içmek baş ağrısına iyi gelir.\r\n★ Kişniş tohumunun 1 yemek kaşığını 1 bardak kaynar suda demleyin ve için. Bu baş ağrısına iyi geliyor.\r\n★ Şeftali yağı sürmek migrene iyi gelir.\r\n★ Balkabak suyundan şerbet hazırlamak ve onu günde 3 defa, her defasında yarım bardak içmek sinüzite iyi gelir.', '/images/blogs/1590613131.jpg', 1),
(43, 'Sıtma (malarya)', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Kronik sıtma hastaları için bir bardak karpuz suyuna 1 tatlı kaşığı bal katın ve gece açık havada bekletin. Onu sabah aç karna için.\r\n★ Kadıntuzluğunun kuru meyvesinin 20 gramını 1 kaynar suda demleyin ve süzün. Aç karna için. \r\n★ Kadıntuzluğunun taze meyvesini de yemek iyi gelir.\r\n★ Aynı miktarda kızılcık ve kadıntuzluğun (kurutulmuş da olur) 20 gramını bir bardak kaynar suda demleyin. Ondan günde 3 defa yemekten önce yarım bardak için. Tedavi 1 haftadır. Bu sıtmaya çok iyi geliyor.', '/images/blogs/1590613301.jpg', 1),
(44, 'Nefes darlığı', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Huş ağacının tomurcuklarını kurutun ve onu toz haline getirin. Onun 1 yemek kaşığını 1 bardak kaynar suda demleyin. Günde 3 defa, her defasında yarım bardak içmek nefes darlığını iyileştirir.\r\n★ Bir litre keçi sütüne bir tatlı kaşığı safran otu katın ve ısık ateşte kaynatın. Ondan günde 3 defa yemekten önce 1 bardak için. Nefes darlığına iyi gelir.\r\n★ Andızın kökünü ve sinir otunun yaprağını küçük parçalar halinde kesin ve ezin. Aynı miktarda olan bu karışıma zencefil ve bal karıştırın. Ondan günde 3 defa yemekten önce bir tatlı kaşığı için. 8-10 günlük tedaviden sonra nefes darlığı iyileşecektir.\r\n★ Nefes darlığı zamanı her gün taze sıcak sütü yudum yudum için.\r\n★ Kurutulmuş yarpuzu (yabani nane) demleyerek çayını için ve onu günde bir kaç defa kurutulmuş incir ya da incir reçeli ile için. \r\n★ Tavşancıl otunu demleyin ve çayını çayını günde bir kaç defa için. \r\n★ Dereotunun 20 gramını 1 bardak kaynar suda demleyin ve üstü kapalı bekletin. Günde 3 defa yarım bardak için.\r\n★ Balgamı temizlemek için tatlı meyanı yemek veya çayını içmek iyi gelir.', '/images/blogs/1590613585.jpg', 1),
(45, 'Vücut ısısı ve vücut zayıflığı', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Kurutulmuş ve ezilmiş çilek yaprağını ahududu meyvesi  ile karıştırın. 20 gramını 1 bardak kaynar suda 10-15 dakika demleyin. Ondan ilk defa 1 bardak, sonra günde belirli aralıklarla sıcak içmek gerekiyor. Bu beden ısısını düşürür.\r\n★ Karahindiba kökünü ve yapraklarını kaynatın. Günde bir kaç defa, her defa bardağın üçte biri kadar için. Bu beden ısısını düşürür.\r\n★ Üşüttüyseniz ve bu yüzden ateşiniz yükseldiyse dut yaprağını küçük parçalar halinde kesin ve 20 gramını bir bardak kaynar suda demleyin. Günde 3 defa bir bardak için.\r\n★ Günde bir kaç tane incir yemek vücut ısısına iyi gelir.\r\n★ Vücut zayıflığı için kızılcık demleyin ve için.\r\n★ Vücut zayıflığı için her gün sebze ve yeşillik yemek gerekiyor.\r\n★ Vücut zayıflığı için her gün üzüm yemek ve suyunu içmek iyi gelir.\r\n★ Vücut zayıflığı için fasulye kaynatın, ezin ve aynı miktarda zeytinyağı ile karıştırın. Günde 3 defa, her defa bir yemek kaşığı için.', '/images/blogs/1590613961.jpg', 1),
(46, 'Nevralji', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Ağrı zamanı yumurtayı iyice haşlayın ve tam ortadan ikiye bölün. Ağrının çok olduğu yere koyun ve soğuyana kadar bekletin. İyi gelecektir.\r\n★ Taze mürver meyvesini sıkın. Onu sabah ve akşam ağrıyan bölgeye sürün.', '/images/blogs/1590614105.jpg', 1);
INSERT INTO `blogs` (`id`, `title`, `text`, `image`, `categoryId`) VALUES
(47, 'Asit (Karında Sıvı Birikmesi)', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Kuşkonmaz tohumunu kurutun, toz haline getirerek kahve gibi demleyin ve için.\r\n★ Mercimeği pişirmek ve günde 3 defa balla yemek asit hastalığına iyi geliyor.\r\n★ Vücut boşluğunda biriken sıvıyı atmak için yavşan (pelin) bitkisinin yapraklarının çayını demleyin ve günde bir kaç defa için.\r\n★ Vücut boşluğunda biriken sıvıyı atmak için ve onun yüzünden oluşan şişlik için aynı miktarda pancar yaprağını ve reyhanı ezin ve suyunu sargı bezi ile şişkinliğin üzerine koyun. Sargı kuruyunca hemen yenisi ile değiştirin.', '/images/blogs/1590614462.jpg', 1),
(48, 'Ağız hastalıkları', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Ağız mukozası iltihabı için havuç suyu ile ağzınızı çalkalayın.\r\n★ Ağızda yara oluşursa ağzınızı günde bir kaç defa süt ile çalkalayın.\r\n★ Ağızdan gelen sarımsak kokusu için taze dut yaprağını çiğneyin.\r\n★ Defne yaprağı ağız kokusunu yok eder.\r\n★ Sık sık tuzlu lahana çiğnemek damağı güçlendirir.\r\n★ Bir bardak suya 1 tatlı kaşığı tuz dökün ve karıştırın. Onunla haftada bir kaç defa ağzınızı çalkalayın. Bu damağı güçlendirir.\r\n★ Her sabah bir kaç tane ebegümeci çiğneyin ve tükürün. Ağızda olan kötü kokuyu yok eder.', '/images/blogs/1590614603.jpg', 1),
(49, 'Metabolizma', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Metabolizma bozukluğu için patatesi iyice yıkayın ve kabukları ile birlikte kızartmak ve yemek gerekiyor. \r\n★ Çoban çantalarını demleyin ve çay gibi için. Bu metabolizmanızı normalleştirir.\r\n★ Yemekten 20-25 dakika önce bardağın üçte biri kadar incir suyu içmek metabolizmaya iyi geliyor.', '/images/blogs/1590614891.png', 1),
(50, 'Diğer hastalıklar', 'TARİFLERDE BULUNAN HERHANGİ BİR MEYVE VE BİTKİ ÇEŞİDİNE ALERJİNİZ VARSA LÜTFEN DOKTORUNUZA DANIŞMADAN KULLANMAYIN!\r\n★ Eğer ayağınızda yorgunluk varsa hardal tohumunun 4 yemek kaşığını 3 litre sıcak suda karıştırın. Ayağınızı 20-25 dakika suda bekletin. Yorgunluğunuz geçecektir.\r\n★ Ses tellerinin hasarı zamanı 5 yemek kaşığı kurutulmuş ve doğranmış kekiği bir litre suda ısık ateşte kaynatın. Başınızı bir havlu ile kapatın ve ağız ve burnunuzu buharda bekletin. Bunu günde 3 defa tekrar ederseniz bir kaç gün sonra iyileşirsiniz.\r\n★ Ihlamur çiçeğinin 20 gramını 1 bardak su ile çay gibi demleyin ve günde bir kaç defa bir bardak içince solunum sistemi iltihabına, karaciğere, böbreğe, mide-bağırsak hastalıklarına iyi gelir. Tedavi 2-3 hafta devam ettirilmelidir. İhtiyaç halinde bir sürelik aradan sonra tekrar devam etmek mümkündür.\r\n★ Kabağı rendeleyin ve suda pişirin. Günde bir kaç defa yemek gerekiyor. Bu öksürüğe iyi geliyor.\r\n★ Ses kısılırsa turp suyunu günde 3 defa 2 yemek kaşığı yemek gerekiyor.\r\n★ Kekik çayını günde bir kaç defa bir bardak içmek kanlı balgama iyi geliyor.\r\n★ Yarpuz (yabani nane) suyunu bal ile karıştırın ve bir miktar tuz ekleyin. Ondan günde bir kaç defa içmek melankoli hastalığına iyi gelir.\r\n★ Plörezi hastalığı için 20 gram rezene tohumunu 200 gram suda kaynatın ve günde bir bardak için.\r\n★ Larenjit zamanı beyaz turp suyunu tüm gün belirli aralıklarla için.\r\n★ Üzüm, şeftali, ekşi elma iştahı açar.\r\n★ Fazla salatalık yemek yaşlanmayı geciktirir.\r\n★ Nane demleyin ve yemekten önce bir yemek kaşığı için. İştahı açar.', '/images/blogs/1590615217.png', 1),
(52, 'Karabiber', 'Mideye faydalıdır, sinir sistemini kuvvetlendirir. Öksürüğe, astıma iyidir. Akciğer, boğaz ve karaciğere zararlıdır. Kansızlık, böbrek hastalıkları için oldukça zararlıdır.', '/images/blogs/1590662290.jpg', 2),
(53, 'Tarçın', 'İnsan moraline iyi gelir. Beyin ve kalp için faydalıdır. Tüm iç organlara kuvvet verir. Göz için faydalıdır, soğuk algınlığına, öksürüğe iyi gelir. Şeker hastalığına (diyabet) faydalıdır, balgam sökücüdür. Baş ağrısı yapar. İdrar kesesine zararlıdır.', '/images/blogs/1590662724.jpg', 2),
(54, 'Defne', 'İnsanı kuvvetlendirir, idrar söktürücüdür. İdrar kesesine faydalıdır. Zehirlenmelere karşı faydalıdır. Soğuk algınlığına iyi gelir.', '/images/blogs/1590662848.jpg', 2),
(55, 'Zencefil', 'Hafızayı güçlendirir, hazma iyi gelir. Karaciğere kuvvet verir, gaz ve eklem ağrıları, ishal için faydalıdır. Mide-bağırsak iltihapları için çayını içmek iyi gelir.', '/images/blogs/1590662906.jpg', 2),
(56, 'Kimyon (tohumu)', 'İştah açar, şişkinliğe ve mide bulantısına iyi gelir. Mide sancısı için etkilidir. Abartmadan yemek gerekiyor. Böbreklere zararlıdır. Buna rağmen böbrek ve idrar kesesi hastalıklarını iyileştirir. Yemekle birlikte yemek kilo aldırır.', '/images/blogs/1590662972.jpg', 2),
(57, 'Karanfil', 'İç organları kuvvetlendirir, mideye faydalıdır. Beyine faydalıdır. Baş ağrısına, felce, diş ağrısına, öksürüğe iyi gelir. Böbrek ve bağırsaklar için zararlıdır.', '/images/blogs/1590663111.jpg', 2),
(58, 'Rezene', 'Böbrek ve idrar kesesi için faydalıdır. Öksürüğe ve balgama iyi gelir.', '/images/blogs/1590663442.jpg', 2),
(59, 'Zerdeçal', 'Şişkinliğe iyi gelir, iştah açar. Karaciğere faydalıdır. Böbreklere de faydası var.', '/images/blogs/1590663528.jpg', 2),
(60, 'Hardal', 'Vücut ısısını yükseltir. Soğuk algınlığına iyi gelir. Kan dolaşımını temizler, iştahı açar. Karaciğer ve dalak ağrılarına iyi gelir.', '/images/blogs/1590663597.jpg', 2),
(61, 'Sinir otu', 'Suyu bağırsak iltihabını iyileştirir. Hemoroid\'e (Basur) iyi gelir.', '/images/blogs/1590663740.jpg', 2),
(62, 'Maydanoz', 'Böbrek hastalıklarına iyi gelir.', '/images/blogs/1590663812.jpg', 2),
(63, 'Yalancı iğde', 'Yağı en ağır yaraları iyileştirir, yüzde olan kırışıklıkları azaltır.', '/images/blogs/1590663884.jpg', 2),
(64, 'Papatya', 'Bu bitkiyi kaynatmak ve içmek şişlikler ve iltihaba iyi gelir. Böbrek taşına iyi gelir.', '/images/blogs/1590663968.jpg', 2),
(65, 'Ebegümeci', 'Onu yemek öksürük için faydalıdır. Demlenmesi ses tellerini açar, sancılara iyi gelir.', '/images/blogs/1590664107.jpg', 2),
(66, 'Kekik', 'Çayı baş ağrısına, yorgunluğa iyi gelir. Kekiğin antiseptik ve antibiyotik özellikleri, öksürük ve bronşit gibi solunum ve soğuk algınlığı ve boğaz ağrısı gibi solunum yolları için etkili bir ilaçtır. Kekiğin bronşit tedavisinde çok etkili olduğu kanıtlanmıştır. Kekik çok iyi bir demir kaynağıdır. Demir, vücuttaki kırmızı kan hücrelerinin büyümesi ve gelişmesi için hayati önem taşır. Demir eksikliği anemiye neden olabileceğinden, günlük diyetinizde kekik içeren anemi önlenmesine yardımcı olabilir. Kekik antibakteriyel özelliğe sahip olmasıyla bilinir. Akneye neden olan bakterilerle savaşmada oldukça etkilidir. Akne tedavisinde yaygın olarak kullanılır. Aynı zamanda cildi sıkılaştırıcı özelliği de vardır. Kafa derisinde kan dolaşımını arttırır ve saçların uzamasına yardımcı olur, saç dökülmesini ve kepeği önler.', '/images/blogs/1590664323.jpg', 2);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Hastalıklar'),
(2, 'Şifalı Bitkiler');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `diseaselist`
--

CREATE TABLE `diseaselist` (
  `id` int(11) NOT NULL,
  `diseaseId` int(11) DEFAULT NULL,
  `blogId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `diseaselist`
--

INSERT INTO `diseaselist` (`id`, `diseaseId`, `blogId`) VALUES
(1, NULL, NULL),
(4, NULL, NULL),
(5, NULL, NULL),
(6, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `diseases`
--

CREATE TABLE `diseases` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `diseases`
--

INSERT INTO `diseases` (`id`, `name`, `image`) VALUES
(6, 'Kan ve Kansızlık (Anemi)', '/images/diseases/1590073844.jpg');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `herblist`
--

CREATE TABLE `herblist` (
  `id` int(11) NOT NULL,
  `herbId` int(11) DEFAULT NULL,
  `blogId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `herblist`
--

INSERT INTO `herblist` (`id`, `herbId`, `blogId`) VALUES
(1, NULL, NULL),
(4, NULL, NULL),
(5, NULL, NULL);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `herbs`
--

CREATE TABLE `herbs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Tablo döküm verisi `herbs`
--

INSERT INTO `herbs` (`id`, `name`, `image`) VALUES
(4, 'Tuncay', '/images/herbs/1590073925.jpg');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryBlog` (`categoryId`);

--
-- Tablo için indeksler `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `diseaselist`
--
ALTER TABLE `diseaselist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diseaseBlog` (`blogId`),
  ADD KEY `diseaseBlog2` (`diseaseId`);

--
-- Tablo için indeksler `diseases`
--
ALTER TABLE `diseases`
  ADD PRIMARY KEY (`id`);

--
-- Tablo için indeksler `herblist`
--
ALTER TABLE `herblist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `herbId` (`herbId`),
  ADD KEY `herblist_ibfk_2` (`blogId`);

--
-- Tablo için indeksler `herbs`
--
ALTER TABLE `herbs`
  ADD PRIMARY KEY (`id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Tablo için AUTO_INCREMENT değeri `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Tablo için AUTO_INCREMENT değeri `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Tablo için AUTO_INCREMENT değeri `diseaselist`
--
ALTER TABLE `diseaselist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `diseases`
--
ALTER TABLE `diseases`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Tablo için AUTO_INCREMENT değeri `herblist`
--
ALTER TABLE `herblist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Tablo için AUTO_INCREMENT değeri `herbs`
--
ALTER TABLE `herbs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `categoryBlog` FOREIGN KEY (`categoryId`) REFERENCES `categories` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Tablo kısıtlamaları `diseaselist`
--
ALTER TABLE `diseaselist`
  ADD CONSTRAINT `diseaseBlog` FOREIGN KEY (`blogId`) REFERENCES `blogs` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `diseaseBlog2` FOREIGN KEY (`diseaseId`) REFERENCES `diseases` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Tablo kısıtlamaları `herblist`
--
ALTER TABLE `herblist`
  ADD CONSTRAINT `herblist_ibfk_1` FOREIGN KEY (`herbId`) REFERENCES `herbs` (`id`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `herblist_ibfk_2` FOREIGN KEY (`blogId`) REFERENCES `blogs` (`id`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
