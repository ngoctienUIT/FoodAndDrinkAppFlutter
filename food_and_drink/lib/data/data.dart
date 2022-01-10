import 'package:food_and_drink/class/category_drink.dart';
import 'package:food_and_drink/class/drink.dart';
import 'package:food_and_drink/class/food.dart';
import 'package:food_and_drink/class/category_food.dart';

var FoodCategoryData = [
  CategoryFood(
    id: 1,
    name: 'Việt Nam',
  ),
  CategoryFood(
      id: 2,
      name: 'Trung Quốc',
      url:
          'https://upload.wikimedia.org/wikipedia/commons/thumb/f/fa/Flag_of_the_People%27s_Republic_of_China.svg/800px-Flag_of_the_People%27s_Republic_of_China.svg.png'),
  CategoryFood(
      id: 3,
      name: 'Hàn Quốc',
      url:
          'https://www.zila.com.vn/wp-content/uploads/2021/02/Flag-of-Korean-Empire.png'),
  CategoryFood(
      id: 4,
      name: 'Nhật Bản',
      url:
          'https://visanuocngoai.vn/wp-content/uploads/2021/02/hinh-anh-quoc-ky-nhat-ban-1024x493.jpg')
];

var FoodData = [
  Food(
      id: 1,
      name: 'Bún cá - Nha Trang',
      urlName:
          'https://statics.vinpearl.com/dac-san-viet-nam-10_1633071461.jpg',
      categoryId: 1,
      ingredients: [
        'cá',
        'bún',
        'hành tím, hành lá, tỏi, ớt, chanh, gừng',
        'Rau muống bào, bông chuối bào, rau húng quế, xà lách… để dùng làm rau ăn kèm',
        'cà chua',
        'Gia vị: nước mắm, muối, bột ngọt, bột nêm, tiêu, dầu ăn…'
      ]),
  Food(
      id: 2,
      name: 'Mì Quảng - Quảng Nam',
      urlName:
          'https://statics.vinpearl.com/dac-san-viet-nam-12_1632991500.jpg',
      categoryId: 1,
      ingredients: [
        'mì',
        'thịt (heo, bò, gà, vịt...)',
        'tôm, cá (lóc, thu, nhám...)',
        'trứng (gà, vịt, cút)',
        'đậu phộng rang, bánh tráng (đa)',
        'ớt, chanh, hành, tỏi...',
        'rau ăn kèm (xà lách, cải con, giá sống, bắp hoặc thân chuối sứ...)'
      ]),
  Food(
      id: 3,
      name: 'Bún bò - Huế',
      urlName:
          'https://statics.vinpearl.com/dac-san-viet-nam-13_1632991543.jpg',
      categoryId: 1),
  Food(
      id: 4,
      name: 'Súp lươn - Nghệ An',
      urlName:
          'https://statics.vinpearl.com/dac-san-viet-nam-14_1632991579.jpg',
      categoryId: 1),
  Food(
      id: 5,
      name: 'Bánh canh ghẹ - Vũng Tàu',
      urlName: 'https://statics.vinpearl.com/dac-san-viet-nam-3_1632991188.jpg',
      categoryId: 1),
  Food(
      id: 6,
      name: 'Gỏi cá trích - Phú Quốc',
      urlName: 'https://statics.vinpearl.com/dac-san-viet-nam-7_1632991306.jpg',
      categoryId: 1),
  Food(
      id: 7,
      name: 'Lẩu mắm - Cần Thơ',
      urlName: 'https://statics.vinpearl.com/dac-san-viet-nam-8_1632991346.jpg',
      categoryId: 1),
  Food(
      id: 8,
      name: 'Nem chua - Thanh Hóa',
      urlName:
          'https://statics.vinpearl.com/dac-san-viet-nam-16_1632991644.jpg',
      categoryId: 1),
  Food(
      id: 9,
      name: 'Bánh xèo -  Quảng Bình',
      urlName:
          'https://statics.vinpearl.com/dac-san-viet-nam-17_1632991705.jpg',
      categoryId: 1),
  Food(
      id: 10,
      name: 'Chả mực - Quảng Ninh',
      urlName:
          'https://statics.vinpearl.com/dac-san-viet-nam-19_1632991775.jpg',
      categoryId: 1),
  Food(
      id: 11,
      name: 'Bún cá cay - Hải Phòng',
      urlName:
          'https://statics.vinpearl.com/dac-san-viet-nam-20_1632991805.jpg',
      categoryId: 1),
  Food(
      id: 12,
      name: 'Cá kho Vũ Đại Hà Nam',
      urlName:
          'https://statics.vinpearl.com/dac-san-viet-nam-21_1632991835.jpg',
      categoryId: 1),
  Food(
      id: 13,
      name: 'Kẹo cu đơ Hà Tĩnh',
      urlName:
          'https://statics.vinpearl.com/dac-san-viet-nam-15_1632991614.jpg',
      categoryId: 1),
  Food(
      id: 14,
      name: 'Bánh tráng cuốn thịt heo - Đà Nẵng',
      urlName:
          'https://statics.vinpearl.com/dac-san-viet-nam-11_1632991459.jpg',
      categoryId: 1),
  Food(
      id: 1,
      name: 'Mì trường thọ',
      urlName:
          'https://cdn.tgdd.vn/Files/2021/08/23/1377184/15-mon-an-dac-san-trung-quoc-noi-tieng-ma-ban-khong-nen-bo-lo-202108231432341146.jpg',
      categoryId: 2),
  Food(
      id: 2,
      name: 'Đậu hũ thối chiên',
      urlName:
          'https://cdn.tgdd.vn/Files/2021/08/23/1377184/15-mon-an-dac-san-trung-quoc-noi-tieng-ma-ban-khong-nen-bo-lo-202108231432573229.jpg',
      categoryId: 2),
  Food(
      id: 3,
      name: 'Bánh bao kim sa',
      urlName:
          'https://cdn.tgdd.vn/Files/2021/08/23/1377184/15-mon-an-dac-san-trung-quoc-noi-tieng-ma-ban-khong-nen-bo-lo-202108231433406762.jpg',
      categoryId: 2),
  Food(
      id: 4,
      name: 'Trứng bách thảo',
      urlName:
          'https://cdn.tgdd.vn/Files/2021/08/23/1377184/15-mon-an-dac-san-trung-quoc-noi-tieng-ma-ban-khong-nen-bo-lo-202108231434080454.jpg',
      categoryId: 2),
  Food(
      id: 5,
      name: 'Gà nướng đất sét',
      urlName:
          'https://cdn.tgdd.vn/Files/2021/08/23/1377184/15-mon-an-dac-san-trung-quoc-noi-tieng-ma-ban-khong-nen-bo-lo-202108231434306277.jpg',
      categoryId: 2),
  Food(
      id: 1,
      name: 'Sushi',
      urlName: 'https://jes.edu.vn/wp-content/uploads/2020/03/sushi.jpg',
      categoryId: 4),
];

var CategoryDrinkData = [
  CategoryDrink(
      id: 1,
      name: 'Trà Sữa',
      url:
          'https://cdn-www.vinid.net/2020/09/8cb97047-tr%C3%A0-s%E1%BB%AFa-pozaa-tea-%C6%B0u-%C4%91%C3%A3i-1024x576.jpg'),
  CategoryDrink(
      id: 2,
      name: 'Nước Trái Cây',
      url:
          'https://cdn.tgdd.vn/Files/2015/04/24/635758/cac-luu-y-de-ep-nuoc-trai-cay-ra-nhieu-nuoc-1.jpg')
];

var DrinkData = [
  Drink(
      id: 1,
      name: 'Hồng trà sữa',
      categoryId: 1,
      urlName: 'https://posapp.vn/wp-content/uploads/2018/03/hong-tra-sua.png'),
  Drink(
      id: 2,
      name: 'Trà sữa Olong',
      categoryId: 1,
      urlName:
          'https://posapp.vn/wp-content/uploads/2018/03/tra-sua-olong.png'),
  Drink(
      id: 3,
      name: 'Trà sữa Thái',
      categoryId: 1,
      urlName: 'https://posapp.vn/wp-content/uploads/2018/03/tra-sua-thai.png'),
  Drink(
      id: 4,
      name: 'Sữa tươi trân châu đường đen',
      categoryId: 1,
      urlName:
          'https://posapp.vn/wp-content/uploads/2020/01/sua-tuoi-tran-chau-duong-den.jpg'),
  Drink(
      id: 5,
      name: 'Lục trà sữa',
      categoryId: 1,
      urlName: 'https://posapp.vn/wp-content/uploads/2018/03/luc-tra-sua.png'),
  Drink(
      id: 1,
      name: 'Nước dưa hấu',
      categoryId: 2,
      urlName:
          'https://s.meta.com.vn/img/thumb.ashx/Data/image/2020/02/03/nuoc-ep-dua-hau.jpg'),
  Drink(
      id: 2,
      name: 'Sinh tố dâu tây, kiwi và bạc hà',
      categoryId: 2,
      urlName:
          'https://s.meta.com.vn/img/thumb.ashx/Data/image/2020/02/03/nuoc-dau-kiwi-bac-ha.jpg'),
  Drink(
      id: 3,
      name: 'Nước ép cam',
      categoryId: 2,
      urlName:
          'https://thucphamorganic.vn/wp-content/uploads/2020/09/cac-loai-nuoc-ep-trai-cay-2.jpg'),
  Drink(
      id: 4,
      name: 'Nước ép dứa cà rốt',
      categoryId: 2,
      urlName:
          'https://thucphamorganic.vn/wp-content/uploads/2020/09/cac-loai-nuoc-ep-trai-cay-4-1.jpg'),
];
