import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff006c46),
      surfaceTint: Color(0xff006c46),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff46e39f),
      onPrimaryContainer: Color(0xff00613f),
      secondary: Color(0xff35684e),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffb7efcd),
      onSecondaryContainer: Color(0xff3b6e53),
      tertiary: Color(0xff0f658d),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff8ed1ff),
      onTertiaryContainer: Color(0xff005a81),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff3fcf3),
      onSurface: Color(0xff161d19),
      onSurfaceVariant: Color(0xff3c4a41),
      outline: Color(0xff6c7b70),
      outlineVariant: Color(0xffbbcabe),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2a322d),
      inversePrimary: Color(0xff42e09c),
      primaryFixed: Color(0xff65fdb6),
      onPrimaryFixed: Color(0xff002112),
      primaryFixedDim: Color(0xff42e09c),
      onPrimaryFixedVariant: Color(0xff005234),
      secondaryFixed: Color(0xffb7efcd),
      onSecondaryFixed: Color(0xff002112),
      secondaryFixedDim: Color(0xff9cd3b2),
      onSecondaryFixedVariant: Color(0xff1b5037),
      tertiaryFixed: Color(0xffc8e6ff),
      onTertiaryFixed: Color(0xff001e2e),
      tertiaryFixedDim: Color(0xff8bcefc),
      onTertiaryFixedVariant: Color(0xff004c6d),
      surfaceDim: Color(0xffd4dcd4),
      surfaceBright: Color(0xfff3fcf3),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeef6ee),
      surfaceContainer: Color(0xffe8f0e8),
      surfaceContainerHigh: Color(0xffe2eae2),
      surfaceContainerHighest: Color(0xffdce5dd),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff003f27),
      surfaceTint: Color(0xff006c46),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff007d52),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff033f27),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff44775c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003a55),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff28739d),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff3fcf3),
      onSurface: Color(0xff0b130e),
      onSurfaceVariant: Color(0xff2c3931),
      outline: Color(0xff48564c),
      outlineVariant: Color(0xff627067),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2a322d),
      inversePrimary: Color(0xff42e09c),
      primaryFixed: Color(0xff007d52),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff00623f),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff44775c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff2a5e45),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff28739d),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff005b81),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc0c9c1),
      surfaceBright: Color(0xfff3fcf3),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeef6ee),
      surfaceContainer: Color(0xffe2eae2),
      surfaceContainerHigh: Color(0xffd7dfd7),
      surfaceContainerHighest: Color(0xffcbd4cc),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00341f),
      surfaceTint: Color(0xff006c46),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff005436),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff00341f),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff1e5239),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003046),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff004e70),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff3fcf3),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff222f27),
      outlineVariant: Color(0xff3e4c43),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2a322d),
      inversePrimary: Color(0xff42e09c),
      primaryFixed: Color(0xff005436),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff003b24),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff1e5239),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff003b24),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff004e70),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff003650),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb3bbb3),
      surfaceBright: Color(0xfff3fcf3),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffebf3eb),
      surfaceContainer: Color(0xffdce5dd),
      surfaceContainerHigh: Color(0xffced7cf),
      surfaceContainerHighest: Color(0xffc0c9c1),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff73ffbc),
      surfaceTint: Color(0xff42e09c),
      onPrimary: Color(0xff003823),
      primaryContainer: Color(0xff46e39f),
      onPrimaryContainer: Color(0xff00613f),
      secondary: Color(0xff9cd3b2),
      onSecondary: Color(0xff003823),
      secondaryContainer: Color(0xff1b5037),
      onSecondaryContainer: Color(0xff8bc1a1),
      tertiary: Color(0xffcee9ff),
      onTertiary: Color(0xff00344c),
      tertiaryContainer: Color(0xff8ed1ff),
      onTertiaryContainer: Color(0xff005a81),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff0e1510),
      onSurface: Color(0xffdce5dd),
      onSurfaceVariant: Color(0xffbbcabe),
      outline: Color(0xff85948a),
      outlineVariant: Color(0xff3c4a41),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdce5dd),
      inversePrimary: Color(0xff006c46),
      primaryFixed: Color(0xff65fdb6),
      onPrimaryFixed: Color(0xff002112),
      primaryFixedDim: Color(0xff42e09c),
      onPrimaryFixedVariant: Color(0xff005234),
      secondaryFixed: Color(0xffb7efcd),
      onSecondaryFixed: Color(0xff002112),
      secondaryFixedDim: Color(0xff9cd3b2),
      onSecondaryFixedVariant: Color(0xff1b5037),
      tertiaryFixed: Color(0xffc8e6ff),
      onTertiaryFixed: Color(0xff001e2e),
      tertiaryFixedDim: Color(0xff8bcefc),
      onTertiaryFixedVariant: Color(0xff004c6d),
      surfaceDim: Color(0xff0e1510),
      surfaceBright: Color(0xff333b36),
      surfaceContainerLowest: Color(0xff09100b),
      surfaceContainerLow: Color(0xff161d19),
      surfaceContainer: Color(0xff1a211c),
      surfaceContainerHigh: Color(0xff242c27),
      surfaceContainerHighest: Color(0xff2f3731),
    );
  }

  ThemeData dark() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff73ffbc),
      surfaceTint: Color(0xff42e09c),
      onPrimary: Color(0xff00341f),
      primaryContainer: Color(0xff46e39f),
      onPrimaryContainer: Color(0xff004129),
      secondary: Color(0xffb1e9c7),
      onSecondary: Color(0xff002c1a),
      secondaryContainer: Color(0xff679c7e),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffcee9ff),
      onTertiary: Color(0xff003046),
      tertiaryContainer: Color(0xff8ed1ff),
      onTertiaryContainer: Color(0xff003c58),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff0e1510),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd1e0d4),
      outline: Color(0xffa6b6aa),
      outlineVariant: Color(0xff859489),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdce5dd),
      inversePrimary: Color(0xff005335),
      primaryFixed: Color(0xff65fdb6),
      onPrimaryFixed: Color(0xff00150a),
      primaryFixedDim: Color(0xff42e09c),
      onPrimaryFixedVariant: Color(0xff003f27),
      secondaryFixed: Color(0xffb7efcd),
      onSecondaryFixed: Color(0xff00150a),
      secondaryFixedDim: Color(0xff9cd3b2),
      onSecondaryFixedVariant: Color(0xff033f27),
      tertiaryFixed: Color(0xffc8e6ff),
      onTertiaryFixed: Color(0xff00131f),
      tertiaryFixedDim: Color(0xff8bcefc),
      onTertiaryFixedVariant: Color(0xff003a55),
      surfaceDim: Color(0xff0e1510),
      surfaceBright: Color(0xff3e4641),
      surfaceContainerLowest: Color(0xff030905),
      surfaceContainerLow: Color(0xff181f1a),
      surfaceContainer: Color(0xff222a25),
      surfaceContainerHigh: Color(0xff2d342f),
      surfaceContainerHighest: Color(0xff38403a),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffbbffd7),
      surfaceTint: Color(0xff42e09c),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff46e39f),
      onPrimaryContainer: Color(0xff001a0d),
      secondary: Color(0xffc4fdda),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xff98cfae),
      onSecondaryContainer: Color(0xff000e06),
      tertiary: Color(0xffe3f2ff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff8ed1ff),
      onTertiaryContainer: Color(0xff001725),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff0e1510),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffe4f4e7),
      outlineVariant: Color(0xffb7c6bb),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffdce5dd),
      inversePrimary: Color(0xff005335),
      primaryFixed: Color(0xff65fdb6),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff42e09c),
      onPrimaryFixedVariant: Color(0xff00150a),
      secondaryFixed: Color(0xffb7efcd),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xff9cd3b2),
      onSecondaryFixedVariant: Color(0xff00150a),
      tertiaryFixed: Color(0xffc8e6ff),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xff8bcefc),
      onTertiaryFixedVariant: Color(0xff00131f),
      surfaceDim: Color(0xff0e1510),
      surfaceBright: Color(0xff4a524c),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1a211c),
      surfaceContainer: Color(0xff2a322d),
      surfaceContainerHigh: Color(0xff353d38),
      surfaceContainerHighest: Color(0xff414943),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
