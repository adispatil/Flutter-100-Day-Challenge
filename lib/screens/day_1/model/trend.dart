class Trend {
  final double lowest;
  final double highest;
  final double conversionRate;
  final List<GCoordinate> recentPrice;

  const Trend({
    this.lowest,
    this.highest,
    this.conversionRate,
    this.recentPrice,
  });
}

class GCoordinate {
  final double xPoint;
  final double yPoint;

  const GCoordinate(this.xPoint, this.yPoint);
}
