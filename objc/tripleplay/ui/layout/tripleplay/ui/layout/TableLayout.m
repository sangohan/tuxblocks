//
//  Generated by the J2ObjC translator.  DO NOT EDIT!
//  source: tripleplay/ui/layout/TableLayout.java
//
//  Created by Thomas on 7/1/13.
//

#import "IOSFloatArray.h"
#import "IOSObjectArray.h"
#import "java/lang/Math.h"
#import "java/util/Arrays.h"
#import "java/util/Iterator.h"
#import "playn/core/Asserts.h"
#import "pythagoras/f/Dimension.h"
#import "pythagoras/f/IDimension.h"
#import "tripleplay/ui/Element.h"
#import "tripleplay/ui/Elements.h"
#import "tripleplay/ui/Layout.h"
#import "tripleplay/ui/Style.h"

@implementation TripleplayUiLayoutTableLayout

static TripleplayUiLayoutTableLayout_Column * TripleplayUiLayoutTableLayout_COL_;

- (IOSObjectArray *)_columns {
  return _columns_;
}
- (void)set_columns:(IOSObjectArray *)_columns {
  JreOperatorRetainedAssign(&_columns_, self, _columns);
}
@synthesize _columns = _columns_;
@synthesize _rowgap = _rowgap_;
@synthesize _colgap = _colgap_;
@synthesize _vstretch = _vstretch_;
- (TripleplayUiStyle_VAlignEnum *)_rowVAlign {
  return _rowVAlign_;
}
- (void)set_rowVAlign:(TripleplayUiStyle_VAlignEnum *)_rowVAlign {
  JreOperatorRetainedAssign(&_rowVAlign_, self, _rowVAlign);
}
@synthesize _rowVAlign = _rowVAlign_;

+ (TripleplayUiLayoutTableLayout_Column *)COL {
  return TripleplayUiLayoutTableLayout_COL_;
}

+ (IOSObjectArray *)columnsWithInt:(int)count {
  return [((TripleplayUiLayoutTableLayout_Column *) NIL_CHK(TripleplayUiLayoutTableLayout_COL_)) copy__WithInt:count];
}

+ (id)colspanWithId:(TripleplayUiElement *)elem
            withInt:(int)colspan {
  (void) [((TripleplayUiElement *) NIL_CHK(elem)) setConstraintWithTripleplayUiLayout_Constraint:[[[TripleplayUiLayoutTableLayout_Colspan alloc] initWithInt:colspan] autorelease]];
  return elem;
}

- (id)initWithInt:(int)columns {
  return [self initTripleplayUiLayoutTableLayoutWithTripleplayUiLayoutTableLayout_ColumnArray:[TripleplayUiLayoutTableLayout columnsWithInt:columns]];
}

- (id)initTripleplayUiLayoutTableLayoutWithTripleplayUiLayoutTableLayout_ColumnArray:(IOSObjectArray *)columns {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&_rowVAlign_, self, [TripleplayUiStyle_VAlignEnum CENTER]);
    JreOperatorRetainedAssign(&_columns_, self, columns);
  }
  return self;
}

- (id)initWithTripleplayUiLayoutTableLayout_ColumnArray:(IOSObjectArray *)columns {
  return [self initTripleplayUiLayoutTableLayoutWithTripleplayUiLayoutTableLayout_ColumnArray:columns];
}

- (TripleplayUiLayoutTableLayout *)gapsWithInt:(int)rowgap
                                       withInt:(int)colgap {
  _rowgap_ = rowgap;
  _colgap_ = colgap;
  return self;
}

- (TripleplayUiLayoutTableLayout *)alignTop {
  JreOperatorRetainedAssign(&_rowVAlign_, self, [TripleplayUiStyle_VAlignEnum TOP]);
  return self;
}

- (TripleplayUiLayoutTableLayout *)alignBottom {
  JreOperatorRetainedAssign(&_rowVAlign_, self, [TripleplayUiStyle_VAlignEnum BOTTOM]);
  return self;
}

- (TripleplayUiLayoutTableLayout *)fillHeight {
  _vstretch_ = YES;
  return self;
}

- (int)columns {
  return (int) [((IOSObjectArray *) NIL_CHK(_columns_)) count];
}

- (PythagorasFDimension *)computeSizeWithTripleplayUiElements:(TripleplayUiElements *)elems
                                                    withFloat:(float)hintX
                                                    withFloat:(float)hintY {
  TripleplayUiLayoutTableLayout_Metrics *m = [self computeMetricsWithTripleplayUiElements:elems withFloat:hintX withFloat:hintY];
  return [[[PythagorasFDimension alloc] initWithFloat:[((TripleplayUiLayoutTableLayout_Metrics *) NIL_CHK(m)) totalWidthWithFloat:_colgap_] withFloat:[((TripleplayUiLayoutTableLayout_Metrics *) NIL_CHK(m)) totalHeightWithFloat:_rowgap_]] autorelease];
}

- (void)layoutWithTripleplayUiElements:(TripleplayUiElements *)elems
                             withFloat:(float)left
                             withFloat:(float)top
                             withFloat:(float)width
                             withFloat:(float)height {
  TripleplayUiLayoutTableLayout_Metrics *m = [self computeMetricsWithTripleplayUiElements:elems withFloat:width withFloat:height];
  int columns = [((TripleplayUiLayoutTableLayout_Metrics *) NIL_CHK(m)) columns], row = 0, col = 0;
  float naturalWidth = [((TripleplayUiLayoutTableLayout_Metrics *) NIL_CHK(m)) totalWidthWithFloat:_colgap_];
  float freeWeight = [self freeWeight];
  float freeExtra = (width - naturalWidth) / freeWeight;
  TripleplayUiStyle_HAlignEnum *halign = ((TripleplayUiStyle_HAlignEnum *) [self resolveStyleWithTripleplayUiElement:elems withTripleplayUiStyle:[TripleplayUiStyle HALIGN]]);
  float startX = left + ((freeWeight == 0) ? [((TripleplayUiStyle_HAlignEnum *) NIL_CHK(halign)) offsetWithFloat:naturalWidth withFloat:width] : 0);
  float x = startX;
  TripleplayUiStyle_VAlignEnum *valign = ((TripleplayUiStyle_VAlignEnum *) [self resolveStyleWithTripleplayUiElement:elems withTripleplayUiStyle:[TripleplayUiStyle VALIGN]]);
  float y = top + [((TripleplayUiStyle_VAlignEnum *) NIL_CHK(valign)) offsetWithFloat:[((TripleplayUiLayoutTableLayout_Metrics *) NIL_CHK(m)) totalHeightWithFloat:_rowgap_] withFloat:height];
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((TripleplayUiElements *) NIL_CHK(elems)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      TripleplayUiElement *elem = ((TripleplayUiElement *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      int colspan = [TripleplayUiLayoutTableLayout colspanWithTripleplayUiElement:elem];
      [PlaynCoreAsserts checkStateWithBOOL:col + colspan <= columns];
      float colWidth = 0;
      for (int ii = 0; ii < colspan; ii++) {
        colWidth += [JavaLangMath maxWithFloat:0 withFloat:[((IOSFloatArray *) NIL_CHK(m.columnWidths)) floatAtIndex:col + ii] + (freeWeight == 0 ? 0 : freeExtra * ((TripleplayUiLayoutTableLayout_Column *) ((TripleplayUiLayoutTableLayout_Column *) [((IOSObjectArray *) NIL_CHK(_columns_)) objectAtIndex:col + ii]))._weight)];
      }
      TripleplayUiLayoutTableLayout_Column *ccfg = ((TripleplayUiLayoutTableLayout_Column *) [((IOSObjectArray *) NIL_CHK(_columns_)) objectAtIndex:col]);
      float rowHeight = [((IOSFloatArray *) NIL_CHK(m.rowHeights)) floatAtIndex:row];
      if (colWidth > 0 && [((TripleplayUiElement *) NIL_CHK(elem)) isVisible]) {
        id<PythagorasFIDimension> psize = [self preferredSizeWithTripleplayUiElement:elem withFloat:0 withFloat:0];
        float elemWidth = (colspan > 1 || ((TripleplayUiLayoutTableLayout_Column *) NIL_CHK(ccfg))._stretch) ? colWidth : [JavaLangMath minWithFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) width] withFloat:colWidth];
        float elemHeight = _vstretch_ ? rowHeight : [JavaLangMath minWithFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) height] withFloat:rowHeight];
        [self setBoundsWithTripleplayUiElement:elem withFloat:x + [((TripleplayUiStyle_HAlignEnum *) NIL_CHK(ccfg._halign)) offsetWithFloat:elemWidth withFloat:colWidth] withFloat:y + [((TripleplayUiStyle_VAlignEnum *) NIL_CHK(_rowVAlign_)) offsetWithFloat:elemHeight withFloat:rowHeight] withFloat:elemWidth withFloat:elemHeight];
      }
      x += (colWidth + _colgap_);
      if ((col += colspan) == columns) {
        col = 0;
        x = startX;
        y += (rowHeight + _rowgap_);
        row++;
      }
    }
  }
}

- (float)freeWeight {
  float freeWeight = 0;
  for (int ii = 0; ii < (int) [((IOSObjectArray *) NIL_CHK(_columns_)) count]; ii++) freeWeight += ((TripleplayUiLayoutTableLayout_Column *) ((TripleplayUiLayoutTableLayout_Column *) [((IOSObjectArray *) NIL_CHK(_columns_)) objectAtIndex:ii]))._weight;
  return freeWeight;
}

- (TripleplayUiLayoutTableLayout_Metrics *)computeMetricsWithTripleplayUiElements:(TripleplayUiElements *)elems
                                                                        withFloat:(float)hintX
                                                                        withFloat:(float)hintY {
  int columns = (int) [((IOSObjectArray *) NIL_CHK(_columns_)) count];
  int cells = 0;
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((TripleplayUiElements *) NIL_CHK(elems)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      TripleplayUiElement *elem = ((TripleplayUiElement *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      cells += [TripleplayUiLayoutTableLayout colspanWithTripleplayUiElement:elem];
    }
  }
  int rows = cells / columns;
  if (cells % columns != 0) rows++;
  TripleplayUiLayoutTableLayout_Metrics *metrics = [[[TripleplayUiLayoutTableLayout_Metrics alloc] init] autorelease];
  ((TripleplayUiLayoutTableLayout_Metrics *) NIL_CHK(metrics)).columnWidths = [[[IOSFloatArray alloc] initWithLength:columns] autorelease];
  ((TripleplayUiLayoutTableLayout_Metrics *) NIL_CHK(metrics)).rowHeights = [[[IOSFloatArray alloc] initWithLength:rows] autorelease];
  for (int cc = 0; cc < columns; cc++) [((IOSFloatArray *) NIL_CHK(metrics.columnWidths)) replaceFloatAtIndex:cc withFloat:((TripleplayUiLayoutTableLayout_Column *) ((TripleplayUiLayoutTableLayout_Column *) [((IOSObjectArray *) NIL_CHK(_columns_)) objectAtIndex:cc]))._minWidth];
  int ii = 0;
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((TripleplayUiElements *) NIL_CHK(elems)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      TripleplayUiElement *elem = ((TripleplayUiElement *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      int col = ii % columns, row = ii / columns;
      if ([((TripleplayUiElement *) NIL_CHK(elem)) isVisible] && ((TripleplayUiLayoutTableLayout_Column *) ((TripleplayUiLayoutTableLayout_Column *) [((IOSObjectArray *) NIL_CHK(_columns_)) objectAtIndex:col]))._weight == 0) {
        id<PythagorasFIDimension> psize = [self preferredSizeWithTripleplayUiElement:elem withFloat:hintX withFloat:hintY];
        [((IOSFloatArray *) NIL_CHK(metrics.rowHeights)) replaceFloatAtIndex:row withFloat:[JavaLangMath maxWithFloat:[((IOSFloatArray *) NIL_CHK(metrics.rowHeights)) floatAtIndex:row] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) height]]];
        [((IOSFloatArray *) NIL_CHK(metrics.columnWidths)) replaceFloatAtIndex:col withFloat:[JavaLangMath maxWithFloat:[((IOSFloatArray *) NIL_CHK(metrics.columnWidths)) floatAtIndex:col] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) width]]];
      }
      ii += [TripleplayUiLayoutTableLayout colspanWithTripleplayUiElement:elem];
    }
  }
  float fixedWidth = _colgap_ * (columns - 1);
  for (int cc = 0; cc < columns; cc++) fixedWidth += [((IOSFloatArray *) NIL_CHK(metrics.columnWidths)) floatAtIndex:cc];
  float freeHintX = (hintX - fixedWidth) / [self freeWeight];
  ii = 0;
  {
    id<JavaUtilIterator> iter__ = ((id<JavaUtilIterator>) [((TripleplayUiElements *) NIL_CHK(elems)) iterator]);
    while ([((id<JavaUtilIterator>) NIL_CHK(iter__)) hasNext]) {
      TripleplayUiElement *elem = ((TripleplayUiElement *) [((id<JavaUtilIterator>) NIL_CHK(iter__)) next]);
      int col = ii % columns, row = ii / columns;
      if ([((TripleplayUiElement *) NIL_CHK(elem)) isVisible] && ((TripleplayUiLayoutTableLayout_Column *) ((TripleplayUiLayoutTableLayout_Column *) [((IOSObjectArray *) NIL_CHK(_columns_)) objectAtIndex:col]))._weight > 0) {
        id<PythagorasFIDimension> psize = [self preferredSizeWithTripleplayUiElement:elem withFloat:freeHintX withFloat:hintY];
        [((IOSFloatArray *) NIL_CHK(metrics.rowHeights)) replaceFloatAtIndex:row withFloat:[JavaLangMath maxWithFloat:[((IOSFloatArray *) NIL_CHK(metrics.rowHeights)) floatAtIndex:row] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) height]]];
        [((IOSFloatArray *) NIL_CHK(metrics.columnWidths)) replaceFloatAtIndex:col withFloat:[JavaLangMath maxWithFloat:[((IOSFloatArray *) NIL_CHK(metrics.columnWidths)) floatAtIndex:col] withFloat:[((id<PythagorasFIDimension>) NIL_CHK(psize)) width]]];
      }
      ii += [TripleplayUiLayoutTableLayout colspanWithTripleplayUiElement:elem];
    }
  }
  return metrics;
}

+ (int)colspanWithTripleplayUiElement:(TripleplayUiElement *)elem {
  TripleplayUiLayout_Constraint *constraint = [((TripleplayUiElement *) NIL_CHK(elem)) constraint];
  return ([constraint isKindOfClass:[TripleplayUiLayoutTableLayout_Colspan class]]) ? ((TripleplayUiLayoutTableLayout_Colspan *) constraint).colspan : 1;
}

+ (float)sumWithJavaLangFloatArray:(IOSFloatArray *)values {
  float total = 0;
  {
    IOSFloatArray *a__ = values;
    int n__ = (int) [((IOSFloatArray *) NIL_CHK(a__)) count];
    for (int i__ = 0; i__ < n__; i__++) {
      float value = [((IOSFloatArray *) NIL_CHK(a__)) floatAtIndex:i__];
      total += value;
    }
  }
  return total;
}

+ (void)initialize {
  if (self == [TripleplayUiLayoutTableLayout class]) {
    JreOperatorRetainedAssign(&TripleplayUiLayoutTableLayout_COL_, self, [[[TripleplayUiLayoutTableLayout_Column alloc] initWithTripleplayUiStyle_HAlignEnum:[TripleplayUiStyle_HAlignEnum CENTER] withBOOL:NO withFloat:1 withFloat:0] autorelease]);
  }
}

- (void)dealloc {
  JreOperatorRetainedAssign(&_rowVAlign_, self, nil);
  JreOperatorRetainedAssign(&_columns_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiLayoutTableLayout *typedCopy = (TripleplayUiLayoutTableLayout *) copy;
  typedCopy._columns = _columns_;
  typedCopy._rowgap = _rowgap_;
  typedCopy._colgap = _colgap_;
  typedCopy._vstretch = _vstretch_;
  typedCopy._rowVAlign = _rowVAlign_;
}

@end
@implementation TripleplayUiLayoutTableLayout_Column

- (TripleplayUiStyle_HAlignEnum *)_halign {
  return _halign_;
}
- (void)set_halign:(TripleplayUiStyle_HAlignEnum *)_halign {
  JreOperatorRetainedAssign(&_halign_, self, _halign);
}
@synthesize _halign = _halign_;
@synthesize _stretch = _stretch_;
@synthesize _weight = _weight_;
@synthesize _minWidth = _minWidth_;

- (id)initWithTripleplayUiStyle_HAlignEnum:(TripleplayUiStyle_HAlignEnum *)halign
                                  withBOOL:(BOOL)stretch
                                 withFloat:(float)weight
                                 withFloat:(float)minWidth {
  if ((self = [super init])) {
    JreOperatorRetainedAssign(&_halign_, self, halign);
    _weight_ = weight;
    _stretch_ = stretch;
    _minWidth_ = minWidth;
  }
  return self;
}

- (TripleplayUiLayoutTableLayout_Column *)alignLeft {
  return [[[TripleplayUiLayoutTableLayout_Column alloc] initWithTripleplayUiStyle_HAlignEnum:[TripleplayUiStyle_HAlignEnum LEFT] withBOOL:_stretch_ withFloat:_weight_ withFloat:_minWidth_] autorelease];
}

- (TripleplayUiLayoutTableLayout_Column *)alignRight {
  return [[[TripleplayUiLayoutTableLayout_Column alloc] initWithTripleplayUiStyle_HAlignEnum:[TripleplayUiStyle_HAlignEnum RIGHT] withBOOL:_stretch_ withFloat:_weight_ withFloat:_minWidth_] autorelease];
}

- (TripleplayUiLayoutTableLayout_Column *)fixed {
  return [[[TripleplayUiLayoutTableLayout_Column alloc] initWithTripleplayUiStyle_HAlignEnum:_halign_ withBOOL:_stretch_ withFloat:0 withFloat:_minWidth_] autorelease];
}

- (TripleplayUiLayoutTableLayout_Column *)freeWithFloat:(float)weight {
  return [[[TripleplayUiLayoutTableLayout_Column alloc] initWithTripleplayUiStyle_HAlignEnum:_halign_ withBOOL:_stretch_ withFloat:weight withFloat:_minWidth_] autorelease];
}

- (TripleplayUiLayoutTableLayout_Column *)stretch {
  return [[[TripleplayUiLayoutTableLayout_Column alloc] initWithTripleplayUiStyle_HAlignEnum:_halign_ withBOOL:YES withFloat:_weight_ withFloat:_minWidth_] autorelease];
}

- (TripleplayUiLayoutTableLayout_Column *)minWidthWithFloat:(float)minWidth {
  return [[[TripleplayUiLayoutTableLayout_Column alloc] initWithTripleplayUiStyle_HAlignEnum:_halign_ withBOOL:_stretch_ withFloat:_weight_ withFloat:minWidth] autorelease];
}

- (IOSObjectArray *)copy__WithInt:(int)count OBJC_METHOD_FAMILY_NONE {
  IOSObjectArray *cols = [[[IOSObjectArray alloc] initWithLength:count type:[IOSClass classWithClass:[TripleplayUiLayoutTableLayout_Column class]]] autorelease];
  [JavaUtilArrays fillWithNSObjectArray:cols withId:self];
  return cols;
}

- (void)dealloc {
  JreOperatorRetainedAssign(&_halign_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiLayoutTableLayout_Column *typedCopy = (TripleplayUiLayoutTableLayout_Column *) copy;
  typedCopy._halign = _halign_;
  typedCopy._stretch = _stretch_;
  typedCopy._weight = _weight_;
  typedCopy._minWidth = _minWidth_;
}

@end
@implementation TripleplayUiLayoutTableLayout_Colspan

@synthesize colspan = colspan_;

- (id)initWithInt:(int)colspan {
  if ((self = [super init])) {
    [PlaynCoreAsserts checkArgumentWithBOOL:colspan >= 1 withId:@"Colspan must be >= 1"];
    self.colspan = colspan;
  }
  return self;
}

- (void)dealloc {
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiLayoutTableLayout_Colspan *typedCopy = (TripleplayUiLayoutTableLayout_Colspan *) copy;
  typedCopy.colspan = colspan_;
}

@end
@implementation TripleplayUiLayoutTableLayout_Metrics

- (IOSFloatArray *)columnWidths {
  return columnWidths_;
}
- (void)setColumnWidths:(IOSFloatArray *)columnWidths {
  JreOperatorRetainedAssign(&columnWidths_, self, columnWidths);
}
@synthesize columnWidths = columnWidths_;
- (IOSFloatArray *)rowHeights {
  return rowHeights_;
}
- (void)setRowHeights:(IOSFloatArray *)rowHeights {
  JreOperatorRetainedAssign(&rowHeights_, self, rowHeights);
}
@synthesize rowHeights = rowHeights_;

- (int)columns {
  return (int) [((IOSFloatArray *) NIL_CHK(columnWidths_)) count];
}

- (int)rows {
  return (int) [((IOSFloatArray *) NIL_CHK(rowHeights_)) count];
}

- (float)totalWidthWithFloat:(float)gap {
  return [TripleplayUiLayoutTableLayout sumWithJavaLangFloatArray:columnWidths_] + gap * ([self columns] - 1);
}

- (float)totalHeightWithFloat:(float)gap {
  return [TripleplayUiLayoutTableLayout sumWithJavaLangFloatArray:rowHeights_] + gap * ([self rows] - 1);
}

- (id)init {
  return [super init];
}

- (void)dealloc {
  JreOperatorRetainedAssign(&rowHeights_, self, nil);
  JreOperatorRetainedAssign(&columnWidths_, self, nil);
  [super dealloc];
}

- (void)copyAllPropertiesTo:(id)copy {
  [super copyAllPropertiesTo:copy];
  TripleplayUiLayoutTableLayout_Metrics *typedCopy = (TripleplayUiLayoutTableLayout_Metrics *) copy;
  typedCopy.columnWidths = columnWidths_;
  typedCopy.rowHeights = rowHeights_;
}

@end