// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

import 'models/category.dart';
import 'models/meals.dart';

// ignore: unnecessary_const
const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Colors.purple,
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Colors.red,
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Colors.orange,
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Colors.blue,
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Colors.green,
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Colors.lightBlue,
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Colors.lightGreen,
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Colors.pink,
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Colors.teal,
  ),
];

const DUMMY_MEALS = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'معكرونة الابسكتي مع صوص الطماطم',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/2/20/Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg/800px-Spaghetti_Bolognese_mit_Parmesan_oder_Grana_Padano.jpg',
    duration: 20,
    ingredients: [
      'اربعة طمطاط',
      'معلقة من زيت الزيتون',
      'بصلة واحدة',
      '250 جرام من الاسبكتي',
      'شطة',
      'جبنة'
    ],
    steps: [
      'نقطع الطماطم والبصل إلى قطع صغيرة',
      'اغلي بعض الماء - أضيفي الملح إليه بمجرد أن يغلي',
      'ضع السباغيتي في الماء المغلي - يجب أن تنضج في غضون 10 إلى 12 دقيقة تقريبًا',
      'في غضون ذلك ، سخني بعض زيت الزيتون وأضيفي البصل المقطوع',
      'بعد دقيقتين ، أضيفي قطع الطماطم والملح والفلفل والبهارات الأخرى',
      'الصلصة ستنضج بمجرد أن تنضج السباغيتي',
      'لا تتردد في إضافة بعض الجبن فوق الطبق النهائي'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      '1 شريحة الخبز الأبيض (أو خبز شطيرة القمح)',
      'شريحة من اللحم',
      'شريحة أناناس',
      'واحد او اتنين شريحة من الجبنة',
      'زبدة'
    ],
    steps: [
      'زبدة جانب واحد من الخبز الأبيض',
      'طبقة اللحم والاناناس والجبن علي الخبز ',
      'اخبزي التوست لمدة 10 دقائق تقريبًا في الفرن على حرارة 200 درجة مئوية'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.Pricey,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      ' ثلاث مائة جرام ماشية هاك',
      'واحد طماطم',
      'واحد خيار',
      'بصلة واحدة',
      'كاتشب',
      'خبر برجر'
    ],
    steps: [
      'أحضري مفرمة اللحم وثبتي القرص ذو الثقوب الصغيرة، ضعي طبق عميق تحت المفرمة',
      'أفرمي اللحم مرتين بدون إضافة أي شيء. من المفضل أن يكون اللحم باردا جدا أثناء الفرم كي تبقى الألياف متماسكة',
      'غطي الطبق بقطعة من النايلون وضعي في البراد لعدة ساعات حسب الوقت المتاح لديك. يمكنك تشكيل البرجر مباشرة إذا لم يتوفر لديك الوقت الكافي',
      'ضعي صاج كبير الحجم، أو مقلاة سميكة القاعدة، على نار متوسطة. إدهني الصاج بزيت الذرة',
      'قطعي اللحم إلى ٤ أجزاء متساوية. شكلي كل جزء إلى كرة. انثري الملح والفلفل على الكرات مع تقليب كرات اللحم عدة مرات ليتوزع الملح والفلفل بكفاءة على اللحم',
      'شكلي كل كرة من اللحم على شكل قرص متوسط الحجم مع محاولة الضغط على وسط القرص كي لا ينتفخ أثناء الشوي وتحصلي على قرص برجر مستوي وناضج من جميع الجهات بكفاءة',
      'ضعي أقراص البرجر على الصاج الساخن ودعيها لعدة دقائق إلى أن يتماسك القاع ويصبح لونه ذهبي غامق. باستعمال ملعقة بلاستيكية عريضة إقلبي أقراص البرجر على الجهة الثانية ودعيها لمد ٥ أو ٧ دقائق إلى أن تتحمر وينضج اللحم تماما. يمكنك وضع شرائح من البصل مع البرجر أثناء الشوي',
      'للتقديم: قدمي البرجر مباشرة مع خبز البرجر، الجبن، المايونيز، الخس، الطماطم والمخلل',
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      "'8 Veal Cutlets', '4 Eggs' '200g Breadcrumbs' '100g Flour' '300ml Butter' '100g Vegetable Oil','Salt' 'lemon Slices'"
    ],
    steps: [
      'طرية لحم العجل إلى حوالي 2-4 مم ، والملح على كلا الجانبين.',
      'على طبق مسطح ، حرك البيض لفترة وجيزة بالشوكة',
      '       سخني الزبدة والزيت في مقلاة كبيرة (اتركي الدهن يسخن بشدة) واقلي شرائح اللحم حتى يصبح لونها بنياً ذهبياً من كلا الجانبين.',
      'سخني الزبدة والزيت في مقلاة كبيرة (اتركي الدهن يسخن بشدة) واقلي شرائح اللحم حتى يصبح لونها بنياً ذهبياً من كلا الجانبين',
      'تأكد من قلب المقلاة بانتظام حتى تكون شرائح اللحم محاطًا بالزيت ويصبح الفتات" رقيقًا',
      'قم بإزالة ، وصفي على ورق المطبخ. يقلى البقدونس في الزيت المتبقي ويصفى',
      'ضع شرائح اللحم في طبق ساخن وقدمي المزين بالبقدونس وشرائح الليمون'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2'
          'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      "جرجير ، خس ، بقدونس ، شمر ، 200 جرام سلمون مدخن ، خردل ، خل بلسمي ، زيت زيتون ، ملح وفلفل"
    ],
    steps: [
      "اغسل وقطع السلطة والأعشاب",
      "قطع السلمون إلى مكعبات",
      "قم بتحويل الخردل والخل وزيت الزيتون إلى صلصة",
      "تحضير السلطة",
      "أضف مكعبات السلمون والصلصة",
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      '4 صفائح من الجيلاتين',
      '150 مل عصير برتقال',
      '80 جرام سكر',
      '300 جرام زبادي',
      '200 جرام كريم',
      'قشر البرتقال',
    ],
    steps: [
      'تذوب الجيلاتين في وعاء',
      'أضف عصير البرتقال والسكر',
      'انزع القدر من على الموقد',
      'إضافة ملعقتين كبيرتين من الزبادي',
      '"قلّب الجيلاتين تحت الزبادي المتبقي',
      'تبريد كل شيء في الثلاجة',
      'اخفقي الكريمة وارفعيها تحت كتلة برتقالية اللون',
      'تبرد مرة أخرى لمدة 4 ساعات على الأقل',
      'تقدم مع قشر البرتقال',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/10/21/23/pancake-3529653_1280.jpg',
    duration: 20,
    ingredients: [
      'واحد ونص كوب طحين لجميع الأغراض',
      'ثلاث ونص ملاعق صغيرة من مسحوق الخبز',
      'واحد ملعقة صغيرة ملح',
      'واحد ملعقة كبيرة سكر أبيض',
      'واحد وربع كوب حليب',
      'بيضة',
      'ثلاث ملاعق كبيرة زبدة مذابة',
    ],
    steps: [
      'في وعاء كبير ، نخلط الطحين والبيكنج بودر والملح والسكر',
      'اصنع حفرة في الوسط واسكب الحليب والبيض والزبدة المذابة ؛ امزج حتى تصبح ناعمة. قم بتسخين مقلاة أو صينية مدهونة قليلاً بالزيت على نار متوسطة عالية',
      'صب الخليط أو اغرفه على صينية الخبز ، باستخدام ربع كوب تقريبًا لكل فطيرة. غواياكيل، الاكوادور',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c8',
    ],
    title: 'Creamy Indian Chicken Curry',
    affordability: Affordability.Pricey,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/06/18/16/05/indian-food-3482749_1280.jpg',
    duration: 35,
    ingredients: [
      '4 Chicken Breasts',
      'بصله',
      'اثنين فص ثوم',
      'قطعة واحدة من الزنجبيل',
      'اربع ملاعق كبيرة لوز',
      'واحد ملعقة صغيرة فلفل كايين',
      '500 مل حليب جوز الهند',
    ],
    steps: [
      'قطع صدر الدجاج إلى شرائح وقليها',
      'نحضر البصل والثوم والزنجبيل إلى عجينة ويقلى كل شيء',
      'أضيفي البهارات وقلّبي',
      'يضاف صدر الدجاج + 250 مل من الماء ويطهى كل شيء لمدة 10 دقائق',
      'أضف حليب جوز الهند',
      'يقدم مع الأرز'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c9',
    ],
    title: 'Chocolate Souffle',
    affordability: Affordability.Affordable,
    complexity: Complexity.Hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/08/07/21/07/souffle-412785_1280.jpg',
    duration: 45,
    ingredients: [
      'واحد ملعقة صغيرة زبدة مذابة',
      'اثنين ملاعق كبيرة سكر أبيض',
      'اثنين أوقية 70٪ شوكولاتة داكنة ، مقطعة إلى قطع',
      'ملعقة كبيرة زبدة',
      'ملعقة كبيرة طحين لجميع الأغراض',
      'اربعة وثلث ملاعق كبيرة من الحليب البارد',
      'رشة ملح',
      'رشة فلفل كايين',
      'واحد صفار بيض كبير',
      'اثنين بياض بيض كبير',
      'رشة من كريمة التارتار',
      'ملعقة كبيرة سكر أبيض',
    ],
    steps: [
      'سخني الفرن إلى 190 درجة مئوية. ضع ورق زبدة على صينية خبز مطوية',
      'ادهنوا قاع وجوانب 2 رامكين برفق بملعقة صغيرة من الزبدة المذابة ؛ تغطية القاع والجوانب حتى الحافة',
      'ادهنوا قاع وجوانب 2 رامكين برفق بملعقة صغيرة من الزبدة المذابة ؛ تغطية القاع والجوانب حتى الحافة',
      'ضع قطع الشوكولاتة في وعاء خلط معدني',
      'ضع وعاءً فوق قدر به حوالي 3 أكواب من الماء الساخن على نار خفيفة',
      'تذوب 1 ملعقة كبيرة زبدة في مقلاة على نار متوسطة. يرش الدقيق. اخفقي حتى يندمج الدقيق مع الزبدة ويثخن الخليط',
      'اخفقي في الحليب البارد حتى يصبح المزيج ناعما و يثخن. نقل الخليط إلى وعاء مع الشوكولاتة المذابة',
      'أضف الملح والفلفل الحار. تخلط جيدا. أضف صفار البيض واخلطهم حتى يمتزجوا',
      'اترك الوعاء فوق الماء الساخن (وليس على نار هادئة) للحفاظ على الشوكولاتة دافئة أثناء خفق بياض البيض',
      'ضعي بياض بيضتين في وعاء الخلط. أضف كريم التارتار. خفقت حتى يبدأ الخليط في التكاثف ويبقى رذاذ من الخفق على السطح لمدة ثانية واحدة قبل أن يختفي في المزيج',
      'أضف ثلث السكر واخفقه. اخفق في القليل من السكر لمدة 15 ثانية',
      'خفقي باقي السكر. استمر في الخفق حتى يصبح المزيج كثيفًا مثل كريم الحلاقة ويحمل قممًا ناعمة ، من 3 إلى 5 دقائق',
      'انقل أقل من نصف بياض البيض إلى الشوكولاتة',
      'امزج حتى يتجانس بياض البيض جيدًا في الشوكولاتة',
      'أضف باقي بياض البيض. قم بطي الشوكولاتة برفق باستخدام ملعقة ، ثم ارفعها من الأسفل وقم بطيها',
      'توقف عن الخلط بعد أن يختفي بياض البيض. يقسم الخليط بين 2 رامكين محضرة. ضع القوالب على صينية خبز مُجهزة',
      'اخبزيها في فرن مسخن مسبقًا حتى تنفخ المشاجرات وترتفع فوق قمة الحافات ، من 12 إلى 15 دقيقة',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Asparagus Salad with Cherry Tomatoes',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/04/09/18/26/asparagus-3304997_1280.jpg',
    duration: 30,
    ingredients: [
      'الهليون الأبيض والأخضر',
      '30 جرامًا من الصنوبر',
      '300 جرام طماطم كرزية',
      'سلطة',
      'ملح ، فلفل و زيت زيتون'
    ],
    steps: [
      'اغسل وقشر واقطع الهليون',
      '"طبخ في ماء مملح',
      'ملح وفلفل الهليون',
      'تحميص الصنوبر',
      'قطع الطماطم إلى نصفين',
      'تخلط مع الهليون والسلطة والتتبيلة',
      'تقدم مع الرغيف الفرنسي'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c1',
    ],
    title: 'معكرونة النيوكي بالكريمة والجبن',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Challenging,
    imageUrl:
        'https://static.banat7wa.com/wp-content/uploads/2019/03/%D8%B7%D8%B1%D9%8A%D9%82%D8%A9-%D8%B9%D9%85%D9%84-%D8%A7%D9%84%D9%86%D9%8A%D9%88%D9%83%D9%8A.4.jpg.webp',
    duration: 30,
    ingredients: [
      'البطاطس : 200 جرام (لعجينة معكرونة النيوكي) ',
      'صفار البيض :1 حبة (كبير الحجم لعجينة النيكوتي )',
      'البيض : 1 حبة (البطاطس : 200 غم (بيضة كاملة، لعجينة معكرونة النيوكي )',
      'جبن البارميزان : 40 جراماَ (طازج، ومبشور، لعجينة معكرونة النيوكي)',
      'جوزة الطيب : ربع ملعقة صغيرة (طازجة، ومبشورة، لعجينة معكرونة النيوكي)',
      'الملح الرمادي : نصف ملعقة صغيرة (لعجينة معكرونة النيوكي)',
      'كريمة : 30 ملليلتراً (مخفوقة، لعجينة معكرونة النيوكي)',
      'دقيق : 220 غراماً (لكل الاستخدامات، بالإضافة إلى المزيد منه لرش اللوح والعجينة، لعجينة معكرونة النيوكي)',
      'كريمة الطبخ : 180 غم (طازجة، لصلصة الجبن)',
      'جبن جورجونزولا : 30 غراماً(جبن جورجونزولا : 30 غراماً)',
      'جبن فونتينا : 30 غراماً ( لصلصة الجبن)',
      'جبن اسياجو : 30 غراماً ( لصلصة الجبن)',
      'جبن البارميزان : 45 غراماً (لصلصة الجبن)',
      'ملح : حسب الرغبة',
      'فلفل أسود : حسب الرغبة',
    ],
    steps: [
      'اغلي البطاطس بالقشر في مياه مالحة. قشري البطاطس واتركيها تبرد تماما ومرريها عبر مصفاة البطاطس',
      'أضيفي الدقيق وجوزة الطيب ثم أضيفي البيض والملح. اعصري مزيج البطاطس والدقيق إلى أن يختلطا. ثم انقلي المزيج إلى سطح مرشوش عليه دقيق وقسميه إلى أربعة أجزاء',
      'لفي كل جزء على شكل ثعبان بقطر 1 سم تقريبا ثم اقطعيه بشكل قطري إلى قطع 2.5 سم. استخدمي ملعقة كبيرة مسطحة قطعي الثعبان إلى قطع صغيرة لتشكيل عجينة النيوكي',
      'لتشكيل عجينة النيوكي، امسكي شوكة في يد واستخدمي السبابة لقطع قطعة من الحافة من النيوكي مقابل المنحنى الخلفي لأسنان الشوكة. اضغطي من وسط النيوكي بإصبعك. أثناء الضغط بإصبعك مقابل أسنان الشوكة اقلبيها على طرف الشوكة لكي تسقط النيوكي على سطح العمل. إذا أصبحت العجينة لزجة وتلتصق اغمسي الشوكة والسبابة في الدقيق',
      'ضعيها في الماء المغلي واطهي إلى أن تطفو إلى السطح، حوالي 2 إلى 3 دقائق. حين تبدأ تطفو اتركيها حوالي 15 ثانية إضافية',
      'أضيفيها إلى صلصة الأربعة أجبان',
      'لتحضير الصلصة: ضعي الزبدة في مقلاة وأضيفي الكريمة واتركي المزيج يغلي ثم اتركيه على نار هادئة',
      'أضيفي كل أنواع الجبن واخفقي معا لصنع صلصة ناعمة',
      'أضيفي النيوكي واطهي إلى أن تلتصق الصلصة قليلا بالنيوكي',
      'رشي بالبارميزان المبشرة من الأعلى',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm12',
    categories: [
      'c1',
    ],
    title: 'الريزوتو',
    affordability: Affordability.Affordable,
    complexity: Complexity.Simple,
    imageUrl:
        'https://www.justfood.tv//userfiles/image/0RISOTTO_RECIPE_HOW_TO_facebook.jpg',
    duration: 40,
    ingredients: [
      '3 كوب ماء',
      ' 2 كوب ثلث مرقة دجاج',
      'ربع كوب زبدة',
      'نصف بصلة مفرومة',
      'كوب أرز',
      'نصف كوب كريمة طهي',
      'ربع كوب جبن بارميزان مبشور',
      'ملح وفلفل حسب الرغبة',
      'بقدونس مفروم للتزيين'
    ],
    steps: [
      'سخّني الماء مع المرق على نار متوسطة حتى تغلي، خففي النار واتركيها على النار',
      'اذيبي 2 ملعقة كيبرة زبدة في قدر على نار متوسطة واضيفي البصل وقلّبي حتى يذبل',
      'اضيفي الأرز وقلّبي لمدة دقيقتين، ثم اضيفي ثلث كوب من مزيج المرق والماء، وقلّبي حتى يتم امتصاصه',
      'ارفعي درجة حرارة النار واضيفي كوب آخر من المرق، ثم دعي القدر على النار بدون أن تغطيه حتى يتم امتصاص السوائل كلها',
      'كرري هذه الخطوة بإضافة كوب من المرق في كل مرة والانتظار حتى يتم امتصاصها حتى تنتهي كمية المرق',
      'دعيه على النار لمدة 25 دقيقة حتى يصبح قوامه كالكريمة',
      'اضيفي الكريمة، الجبنة، الملح والفلفل وباقي كمية الزبدة، قلّبي لمدة دقيقتين',
      'زيّنيه بالبقدونس وقدميه',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm13',
    categories: [
      'c1',
    ],
    title: 'اوسوبوكو',
    affordability: Affordability.Luxurious,
    complexity: Complexity.Simple,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYSwwR02metoC31YSz3hulAzy1tVaBSGoowA&usqp=CAU',
    duration: 30,
    ingredients: [
      'اتنين قطعه اوسوبوكو',
      'ملح , فلفل',
      'جوزه الطيب',
      'دقيق',
      'الساشيه ',
      'فص توم',
      'ورق لورا',
      'واحد عود زعتر اخضر',
      'كرات',
      'كرفس',
      'بقدونس',
      'فلفل اسود حصا',
      'الصلصه :',
      'اثنين ',
      'واحد كوب عصير طماطم',
      'واحد كوب مرق دجاج',
      'واحد بصل مكعبات صغيره',
      'واحد جزر مكعبات صغيره',
      'واحد عود كرفس مكعبات',
      'عصير برتقاله و بشر برتقال',
      'زيت زيتون',
      'الجريمولادا :',
      'قشر ليمون شيفوناد',
      'بقدونس مفروم ناعم',
      'فص توم ناعم',
      'اتنين ملعقة كبيرة زيت زيتون',
    ],
    steps: [
      'تبل قطع الاوسوبوكو بالملح والفلفل وجوزه الطيب ونغطيها بالدقيق ونشوحها في زيت ساخن لحين الحصول علي لون دهبي',
      'نرفع قطع اللحم ونشوح الخضار في نفس الطاسه (البصل والجزر والكرفس) وعصير الطماطم والصلصه وبشر وعصير البرتقاله ونسبها لمده 5 دقايق في صينيه فرن',
      'نصع نصف مقدار الصلصه وعليها قطع اللحم ونغطيها بباقي الصلصه ونضع مكونات الساشيه في قطعه شاش ونربطها بالدباره ونحطها مع اللحم في الصينيه ونغطيها بفويل وندخلها الفرن علي نار هاديه لمده من 90 ل 120 دقيقه',
      'لتحضير الجريمولادا ,نخلط كل مكوناتها وبكدا تكون جاهزه لتحصير الريزوتو نشوح البصله في الزبده ونضيف لها الارز يتقلب معاها ونبدا نضيف المرق مغرفه بعد مغرفه مع التقليب المستمر.',
      'وقبل نهايه التسويه نضيف الكريمه والجبنه البارميزان',
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: false,
    isLactoseFree: false,
  )
];