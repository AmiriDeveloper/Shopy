class Product {
  final int id;
  final String price;
  final String imageUrl;
  final String model;
  final String ram;
  final String memory;
  final String pixel;

  Product({
    required this.id,
    required this.price,
    required this.imageUrl,
    required this.model,
    required this.memory,
    required this.pixel,
    required this.ram,
  });
}

List<Product> sho = [
  Product(
    id: 1,
    imageUrl:
        "https://www.gottabemobile.com/samsung-galaxy-s10-news/galaxy-s10-3/",
    price: "1100",
    model: "samsung glaxy 10s",
    ram: "8",
    memory: "128",
    pixel: "48",
  ),
  Product(
    id: 8,
    imageUrl: "https://m.media-amazon.com/images/I/71oXhyGDd+L.jpg",
    price: "3100",
    model: "Sony Experia Z",
    ram: "16",
    memory: "500",
    pixel: "16",
  ),
  Product(
    id: 9,
    imageUrl:
        "https://www.androidauthority.com/wp-content/uploads/2022/02/Samsung-Galaxy-S22-Ultra-camera-module-close-up-angled.jpg",
    price: "925",
    model: "samsung glaxy S22",
    ram: "8",
    memory: "256",
    pixel: "48",
  ),
  Product(
    id: 10,
    imageUrl:
        "https://www.photographyblog.com/imager/entryimages/121124/canon_eos_r5_hands_on_july_9th_8c9cd6ffa9b02044a7a3327bc82c5649.jpg",
    price: "2050",
    model: " Canon EOS ",
    ram: "0.0",
    memory: "0.0",
    pixel: "Full Hd",
  ),
  Product(
    id: 11,
    imageUrl:
        "https://www.androidauthority.com/wp-content/uploads/2021/05/Asus-Zenfone-8-Flip-10-scaled.jpg",
    price: "880",
    model: "Asus Zenfone 8 Flip",
    ram: "8",
    memory: "256",
    pixel: "64-12",
  ),
  Product(
    id: 12,
    imageUrl:
        "https://cdn.vox-cdn.com/thumbor/c51CBlRJwSMyvgL2MnlRiE6w-e4=/0x0:3000x2000/1200x0/filters:focal(0x0:3000x2000):no_upscale()/cdn.vox-cdn.com/uploads/chorus_asset/file/22790757/dseifert_4711_samsung_z_flip_3_5.jpg",
    price: "950",
    model: " samsung Z Flip ",
    ram: "8",
    memory: "256",
    pixel: "12-12",
  ),
  Product(
    id: 13,
    imageUrl:
        "https://media.wired.com/photos/61bb761477cdb999ac10fbab/3:2/w_1280%2Cc_limit/Gear-Oppo-Folding-Phone.jpg",
    price: "1200",
    model: " samsung Z Flod ",
    ram: "12",
    memory: "256",
    pixel: "12-10",
  ),
  Product(
    id: 14,
    imageUrl: "https://xiaomi-mi.com/uploads/NewsItem/com__1622219110.jpg",
    price: "650",
    model: "Xiaomi Note 8 pro",
    ram: "6",
    memory: "128",
    pixel: "48",
  ),
  Product(
    id: 2,
    imageUrl:
        "https://www.mytrendyphone.eu/images/Case-with-Ring-Holder-for-Huawei-P50-Pocket-Black-14012022-01-p.jpg",
    price: "1209",
    model: "huawi P50",
    ram: "16",
    memory: "256",
    pixel: "64",
  ),
  Product(
    id: 3,
    imageUrl:
        "https://cdn.pocket-lint.com/r/s/320x/assets/images/120810-phones-news-buyer-s-guide-upcoming-smartphones-image82-xtmzmj34ai.jpg?v1",
    price: "300",
    model: "samsung A32",
    ram: "8",
    memory: "128",
    pixel: "48",
  ),
  Product(
    id: 4,
    imageUrl:
        "https://target.scene7.com/is/image/Target/GUEST_18158d75-e421-4bc4-98cf-2d2a00533a0b",
    price: "40",
    model: "headph heyday",
    ram: "0",
    memory: "0",
    pixel: "0",
  ),
  Product(
    id: 5,
    imageUrl:
        "https://www.thebackmarket.nl/cdn-cgi/image/format=auto,quality=75,width=640/https://d1eh9yux7w8iql.cloudfront.net/product_images/397533_6412a537-4f4d-42e6-a4c5-64a37169a139.jpg",
    price: "990",
    model: "samsung Note 20",
    ram: "32",
    memory: "500",
    pixel: "64",
  ),
  Product(
    id: 6,
    imageUrl: "https://cdn.mos.cms.futurecdn.net/gxyWHWHtEMUoKCv5RFMMoi.jpg",
    price: "1670",
    model: "lenovo think pad",
    ram: "12",
    memory: "500",
    pixel: "24",
  ),
  Product(
    id: 7,
    imageUrl:
        "https://www.notebookcheck.nl/uploads/tx_nbc2/XiaomiRedmiNote11Pro.JPG",
    price: "650",
    model: "Xa Radmi Note 11s",
    ram: "8",
    memory: "256",
    pixel: "48",
  ),
  Product(
    id: 15,
    imageUrl:
        "https://camerajabber.com/wp-content/uploads/2020/02/Nikon_D6__DSC1547-1410x793.jpg",
    price: "3296",
    model: "Nikon D 810",
    ram: "0.0",
    memory: "0.0",
    pixel: "Quek HD",
  ),
  Product(
    id: 16,
    imageUrl:
        "https://staticimg.titan.co.in/Fastrack/Catalog/FO2GRA02_1.jpg?pView=pdp",
    price: "70",
    model: "Skyline Collection",
    ram: "0.0",
    memory: "0.0",
    pixel: "0.0",
  ),
  Product(
    id: 17,
    imageUrl:
        "https://www.sony.co.uk/image/0db517b7884d87c665c1ca403bc22ce2?fmt=pjpeg&bgcolor=FFFFFF&bgc=FFFFFF&wid=2515&hei=1320",
    price: "35",
    model: "Wireless Headphon",
    ram: "0.0",
    memory: "0.0",
    pixel: "0.0",
  ),
];

class Top {
  String title;
  Top({required this.title});
}

List<Top> titleList = [
  Top(title: "phons"),
  Top(title: "camera"),
  Top(title: "airpads"),
  Top(title: "laptop"),
  Top(title: "headphone"),
  Top(title: "speaker"),
  Top(title: "television"),
  Top(title: "watch"),
  Top(title: "consol"),
  Top(title: "powerbank"),
];

class Pic {
  int id;
  final String pictuer;
  Pic({required this.pictuer, required this.id});
}

List<Pic> pic = [
  Pic(pictuer: 'images/xiaomi.jpg', id: 1),
  Pic(pictuer: 'images/Samsung-Logo.webp', id: 2),
  Pic(pictuer: 'images/apple.jpg', id: 3),
  Pic(pictuer: 'images/huawei.jpg', id: 4),
  Pic(pictuer: 'images/isom.webp', id: 5),
  Pic(pictuer: 'images/Modren.jpg', id: 6),
  Pic(pictuer: 'images/shut.webp', id: 7),
  Pic(pictuer: 'images/global.webp', id: 8)
];

class Pik {
  int id;
  String pictuer;
  Pik({required this.pictuer, required this.id});
}

List<Pik> pik = [
  Pik(pictuer: 'images/isom.webp', id: 5),
  Pik(pictuer: 'images/Modren.jpg', id: 6),
  Pik(pictuer: 'images/shut.webp', id: 7),
  Pik(pictuer: 'images/global.webp', id: 8)
];
