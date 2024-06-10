
-- snippets/flutter.lua
local ls = require('luasnip')
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node

return {
  -- Stateless Widget
  s('statelessW', {
    t('class '), i(1, 'name'), t(' extends StatelessWidget {'),
    t({'', '  const '}), i(1, 'name'), t('({super.key});'),
    t({'', '  @override', '  Widget build(BuildContext context) {'}),
    t({'', '    return Container();', '  }', '}'}),
  }),

  -- Stateful Widget
  s('statefulW', {
    t('class '), i(1, 'name'), t(' extends StatefulWidget {'),
    t({'', '  const '}), i(1, 'name'), t('({super.key});'),
    t({'', '  @override', '  State<'}), i(1, 'index'), t('> createState() => _'), i(1, 'WidgetName'), t('State();'),
    t({'', '}', '', 'class _'}), i(1, 'index'), t('State extends State<'), i(1, 'index'), t('> {'),
    t({'', '  @override', '  Widget build(BuildContext context) {'}),
    t({'', '    return Container();', '  }', '}'}),
  }),

  -- Build Method
  s('build', {
    t('@override'),
    t({'', 'Widget build(BuildContext context) {'}),
    t({'', '  return '}), i(0, ''), t(';'),
    t({'', '}'}),
  }),

  -- Custom Painter
  s('customPainter', {
    t('class '), i(0, 'name'), t('Painter extends CustomPainter {'),
    t({'', '', '  @override', '  void paint(Canvas canvas, Size size) {'}),
    t({'', '  }', '', '  @override', '  bool shouldRepaint('}), i(0, 'name'), t('Painter oldDelegate) => false;'),
    t({'', '', '  @override', '  bool shouldRebuildSemantics('}), i(0, 'name'), t('Painter oldDelegate) => false;'),
    t({'', '}'}),
  }),

  -- Custom Clipper
  s('customClipper', {
    t('class '), i(0, 'name'), t('Clipper extends CustomClipper<Path> {'),
    t({'', '', '  @override', '  Path getClip(Size size) {'}),
    t({'', '  }', '', '  @override', '  bool shouldReclip(CustomClipper<Path> oldClipper) => false;', '}'}),
  }),

  -- InitState
  s('initS', {
    t('@override'),
    t({'', 'void initState() {'}),
    t({'', '  super.initState();'}),
    t({'', '  '}), i(0, ''),
    t({'', '}'}),
  }),

  -- Dispose
  s('dis', {
    t('@override'),
    t({'', 'void dispose() {'}),
    t({'', '  '}), i(0, ''),
    t({'', '  super.dispose();', '}'}),
  }),

  -- Reassemble
  s('reassemble', {
    t('@override'),
    t({'', 'void reassemble(){'}),
    t({'', '  super.reassemble();'}),
    t({'', '  '}), i(0, ''),
    t({'', '}'}),
  }),

  -- didChangeDependencies
  s('didChangeD', {
    t('@override'),
    t({'', 'void didChangeDependencies() {'}),
    t({'', '  super.didChangeDependencies();'}),
    t({'', '  '}), i(0, ''),
    t({'', '}'}),
  }),

  -- didUpdateWidget
  s('didUpdateW', {
    t('@override'),
    t({'', 'void didUpdateWidget ('}), i(1, 'Type'), t(' '), i(2, 'oldWidget'), t(') {'),
    t({'', '  super.didUpdateWidget('}), i(2, 'oldWidget'), t(');'),
    t({'', '  '}), i(0, ''),
    t({'', '}'}),
  }),

  -- ListView.Builder
  s('listViewB', {
    t('ListView.builder('),
    t({'', '  itemCount: '}), i(1, '1'), t(','),
    t({'', '  itemBuilder: (BuildContext context, int index) {'}),
    t({'', '    return '}), i(2, ''), t(';'),
    t({'', '  },', '),'}),
  }),

  -- ListView.Separated
  s('listViewS', {
    t('ListView.separated('),
    t({'', '  itemCount: '}), i(1, '1'), t(','),
    t({'', '  separatorBuilder: (BuildContext context, int index) {'}),
    t({'', '    return '}), i(2, ''), t(';'),
    t({'', '  },', '  itemBuilder: (BuildContext context, int index) {'}),
    t({'', '    return '}), i(3, ''), t(';'),
    t({'', '  },', '),'}),
  }),

  -- GridView.Builder
  s('gridViewB', {
    t('GridView.builder('),
    t({'', '  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount('}),
    t({'', '    crossAxisCount: '}), i(1, '2'), t(','),
    t({'', '  ),', '  itemCount: '}), i(2, '2'), t(','),
    t({'', '  itemBuilder: (BuildContext context, int index) {'}),
    t({'', '    return '}), i(3, ''), t(';'),
    t({'', '  },', '),'}),
  }),

  -- GridView.Count
  s('gridViewC', {
    t('GridView.count('),
    t({'', '  crossAxisSpacing: '}), i(1, '1'), t(','),
    t({'', '  mainAxisSpacing: '}), i(2, '2'), t(','),
    t({'', '  crossAxisCount: '}), i(3, '2'), t(','),
    t({'', '  children: <Widget> ['}),
    t({'', '    '}), i(4, ''),
    t({'', '  ],', '),'}),
  }),

  -- GridView.Extent
  s('gridViewE', {
    t('GridView.extent('),
    t({'', '  maxCrossAxisExtent: '}), i(1, '2'), t(','),
    t({'', '  children: <Widget> ['}),
    t({'', '    '}), i(2, ''),
    t({'', '  ],', '),'}),
  }),

  -- Custom Scroll View
  s('customScrollV', {
    t('CustomScrollView('),
    t({'', '  slivers: <Widget>['}),
    t({'', '    '}), i(0, ''),
    t({'', '  ],', '),'}),
  }),

  -- Stream Builder
  s('streamBldr', {
    t('StreamBuilder('),
    t({'', '  stream: '}), i(1, 'stream'), t(','),
    t({'', '  initialData: '}), i(2, 'initialData'), t(','),
    t({'', '  builder: (BuildContext context, AsyncSnapshot snapshot) {'}),
    t({'', '    return Container('}),
    t({'', '      child: '}), i(3, 'child'), t(','),
    t({'', '    );', '  },', '),'}),
  }),

  -- Animated Builder
  s('animatedBldr', {
    t('AnimatedBuilder('),
    t({'', '  animation: '}), i(1, 'animation'), t(','),
    t({'', '  child: '}), i(2, 'child'), t(','),
    t({'', '  builder: (BuildContext context, Widget? child) {'}),
    t({'', '    return '}), i(3, ''), t(';'),
    t({'', '  },', '),'}),
  }),

  -- Stateful Builder
  s('statefulBldr', {
    t('StatefulBuilder('),
    t({'', '  builder: (BuildContext context, setState) {'}),
    t({'', '    return '}), i(0, ''), t(';'),
    t({'', '  },', '),'}),
  }),

  -- Orientation Builder
  s('orientationBldr', {
    t('OrientationBuilder('),
    t({'', '  builder: (BuildContext context, Orientation orientation) {'}),
    t({'', '    return Container('}),
    t({'', '      child: '}), i(3, 'child'), t(','),
    t({'', '    );', '  },', '),'}),
  }),

  -- Layout Builder
  s('layoutBldr', {
    t('LayoutBuilder('),
    t({'', '  builder: (BuildContext context, BoxConstraints constraints) {'}),
    t({'', '    return '}), i(0, ''), t(';'),
    t({'', '  },', '),'}),
  }),

  -- Single Child ScrollView
  s('singleChildSV', {
    t('SingleChildScrollView('),
    t({'', '  controller: '}), i(1, 'controller'), t(','),
    t({'', '  child: Column('}),
    t({'', '    '}), i(0, ''),
    t({'', '  ),', '),'}),
  }),

  -- Future Builder
  s('futureBldr', {
    t('FutureBuilder('),
    t({'', '  future: '}), i(1, 'Future'), t(','),
    t({'', '  initialData: '}), i(2, 'InitialData'), t(','),
    t({'', '  builder: (BuildContext context, AsyncSnapshot snapshot) {'}),
    t({'', '    return '}), i(3, ''), t(';'),
    t({'', '  },', '),'}),
  }),

  -- No Such Method
  s('nosm', {
    t('@override'),
    t({'', 'dynamic noSuchMethod(Invocation invocation) {'}),
    t({'', '  '}), i(1, ''),
    t({'', '}'}),
  }),

  -- Inherited Widget
  s('inheritedW', {
    t('class '), i(1, 'Name'), t(' extends InheritedWidget {'),
    t({'', '  const '}), i(1, 'Name'), t('({super.key, required this.child}) : super(child: child);'),
    t({'', '', '  final Widget child;', '', '  static '}), i(1, 'Name'), t('? of(BuildContext context) {'),
    t({'', '    return context.dependOnInheritedWidgetOfExactType<'}), i(1, 'Name'), t('>();'),
    t({'', '  }', '', '  @override', '  bool updateShouldNotify('}), i(1, 'Name'), t(' oldWidget) {'),
    t({'', '    return '}), i(2, 'true'), t(';'),
    t({'', '  }', '}'}),
  }),

  -- Mounted
  s('mounted', {
    t('@override'),
    t({'', 'bool get mounted {'}),
    t({'', '  '}), i(0, ''),
    t({'', '}'}),
  }),

  -- Sink
  s('snk', {
    t('Sink<'), i(1, 'type'), t('> get '), i(2, 'name'), t(' => _'), i(2, 'name'), t('Controller.sink;'),
    t({'', 'final _'}), i(2, 'name'), t('Controller = StreamController<'), i(1, 'type'), t('>();'),
  }),

  -- Stream
  s('strm', {
    t('Stream<'), i(1, 'type'), t('> get '), i(2, 'name'), t(' => _'), i(2, 'name'), t('Controller.stream;'),
    t({'', 'final _'}), i(2, 'name'), t('Controller = StreamController<'), i(1, 'type'), t('>();'),
  }),

  -- Subject
  s('subj', {
    t('Stream<'), i(1, 'type'), t('> get '), i(2, 'name'), t(' => _'), i(2, 'name'), t('Subject.stream;'),
    t({'', 'final _'}), i(2, 'name'), t('Subject = BehaviorSubject<'), i(1, 'type'), t('>();'),
  }),

  -- toString
  s('toStr', {
    t('@override'),
    t({'', 'String toString() => '}), i(1, 'toString'), t(';'),
  }),

  -- debugPrint
  s('debugP', {
    t('debugPrint('), i(1, 'statement'), t(');'),
  }),

  -- Material Package
  s('importM', {
    t('import \'package:flutter/material.dart\';'),
  }),

  -- Cupertino Package
  s('importC', {
    t('import \'package:flutter/cupertino.dart\';'),
  }),

  -- flutter_test Package
  s('importFT', {
    t('import \'package:flutter_test/flutter_test.dart\';'),
  }),

  -- app_localizations Package
  s('importAL', {
    t('import \'package:flutter_gen/gen_l10n/app_localizations.dart\';'),
  }),

  -- Material App
  s('mateapp', {
    t({'import \'package:flutter/material.dart\';', '', 'void main() => runApp(const MyApp());', '', 'class MyApp extends StatelessWidget {', '  const MyApp({super.key});', '', '  @override', '  Widget build(BuildContext context) {'}),
    t({'', '    return MaterialApp('}),
    t({'', '      title: \'Material App\',', '      home: Scaffold('}),
    t({'', '        appBar: AppBar('}),
    t({'', '          title: const Text(\'Material App Bar\'),', '        ),', '        body: const Center('}),
    t({'', '          child: Text(\'Hello World\'),', '        ),', '      ),', '    );', '  }', '}'}),
  }),

  -- Cupertino App
  s('cupeapp', {
    t({'import \'package:flutter/cupertino.dart\';', '', 'void main() => runApp(const MyApp());', '', 'class MyApp extends StatelessWidget {', '  const MyApp({super.key});', '', '  @override', '  Widget build(BuildContext context) {'}),
    t({'', '    return const CupertinoApp('}),
    t({'', '      title: \'Cupertino App\',', '      home: CupertinoPageScaffold('}),
    t({'', '        navigationBar: CupertinoNavigationBar('}),
    t({'', '          middle: Text(\'Cupertino App Bar\'),', '        ),', '        child: Center('}),
    t({'', '          child: Text(\'Hello World\'),', '        ),', '      ),', '    );', '  }', '}'}),
  }),

  -- Tween Animation Builder
  s('tweenAnimationBuilder', {
    t('TweenAnimationBuilder('),
    t({'', '  duration: '}), i(1, 'const Duration()'), t(','),
    t({'', '  tween: '}), i(2, 'Tween()'), t(','),
    t({'', '  builder: (BuildContext context, '}) i(3, 'dynamic'), t(' value, Widget? child) {'),
    t({'', '    return '}), i(4, 'Container()'), t(';'),
    t({'', '  },', '),'}),
  }),

  -- Value Listenable Builder
  s('valueListenableBuilder', {
    t('ValueListenableBuilder('),
    t({'', '  valueListenable: '}), i(1, 'null'), t(','),
    t({'', '  builder: (BuildContext context, '}) i(2, 'dynamic'), t(' value, Widget? child) {'),
    t({'', '    return '}), i(3, 'Container()'), t(';'),
    t({'', '  },', '),'}),
  }),

  -- Test
  s('f-test', {
    t('test('),
    t({'', '  "'}), i(1, 'test description'), t('",'),
    t({'', '  () {},', ');'}),
  }),

  -- Group
  s('f-group', {
    t('group('),
    t({'', '  "'}), i(1, 'group description'), t('",'),
    t({'', '  () {},', ');'}),
  }),

  -- Test Widgets
  s('f-testWidgets', {
    t('testWidgets('),
    t({'', '  "'}), i(1, 'test description'), t('",'),
    t({'', '  (WidgetTester tester) async {},', ');'}),
  }),
}
