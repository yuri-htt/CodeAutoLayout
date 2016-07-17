<NSLayoutAttribute>
..制約の対象となる属性を表す。
  列挙型で用意されている。

typedef NS_ENUM(NSInteger, NSLayoutAttribute) {
    NSLayoutAttrubuteLeft,
    SLayoutAttrubuteRight,
    SLayoutAttrubuteTop,
    SLayoutAttrubuteButtom,
    SLayoutAttrubuteLeading,
    SLayoutAttrubuteTrailing,
    SLayoutAttrubuteWidth,
    SLayoutAttrubuteHeight,
    SLayoutAttrubuteCenterX,
    SLayoutAttrubuteCenterY,
    SLayoutAttrubuteBaseline,

    SLayoutAttrubuteNotAnAttribute = 0
};


<NSLayoutRelation>
..制約の計算式と計算結果の関係性を表す列挙型。

typedef NS_ENUM(NSinteger, NSLayoutRelation) {
    NSLayoutRelationLessThanOrEqual = -1,
    NSLayoutRelationEqual = 0,
    NSLayoutRelationGreaterThanOrEaqual = 1,
};


<NSLayoutPriority>
..競合する制約間の優先順位を表す列挙型。
　値が高い方が優先順位が高い。　

enum {
    UILayoutPriorityRequired = 1000,
    UILayoutPriorityDefaultHigh = 750,
    UILayoutPriorityDefaultLow = 250,
    UILayoutPriorityFittingSizeLevel = 50
};
typedef float UILayoutPriority;


<NSLAuoytConstraintの計算式>
属性値1 == 属性値2*乗数 + 定数

button2.left == button1.right*1 + 10
..ボタン1の右端から右に10pxの位置にボタン2を設置

view2.width == view1.width*3 + 0
..view2の幅をview1の幅の3倍に設定


<Visual Format Language>
..制約をNSStringで表す。
self.view.addConstraintsWithFormat("H:|-15-[v0]-10-[v1(135)]-15-|", views: loginBtn, twitterBtn)
		self.view.addConstraintsWithFormat("V:[v0(40)]-15-|", views: loginBtn)
		self.view.addConstraintsWithFormat("V:[v0(40)]-15-|", views: twitterBtn)
H:horizon
V:Vertical
|:親viewの端
[v0]:制約を設定するviewのインスタンス
[v1(10)]:2つめに渡されたviewの幅もしくは高さを10pxに設定


<layoutSubviews>
..viewのframeが変化した際に自動的に呼ばれる。
似たものにupdateConstraintsがあるが、
こちらもシステムによって自動的に呼ばれるので
呼び出す処理の作成は不要。
layoutSubviewsとupdateConstraints両方をオーバーライドしてはいけない。

layoutSubviews    <--- setNeedsLayout
uodateConstraints <--- setNeedsUpdateConstraints


<注意>
iOS5ではコードによるAutoLayoutは実現できない。

<参考>
クラスメソッド　かけがわ様
http://www.slideshare.net/classmethod/i-os-auto-layout



