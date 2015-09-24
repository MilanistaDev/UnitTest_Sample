## UnitTest_Sample
ある簡単なメソッドの挙動を確かめる単体テストAppです。  
This is Unit Test App to confirm a easy method.  

* Segmented Control の値によって決まった文字列を返す関数をテスト
  - UnitTest_SampleTests.m を開く
  - テスト実行時は実機ではなく Simulator を選択
  - 全体をテストする必要はないのでメソッドごとに菱形のマークを押下して実行
  - Build Succeeded --> Test Succeeded となれば成功

```
// (抜粋) 0 が選択されたとき得られる値をテスト
- (void)testGetValueLabelZero
{
    ViewController *VC = [[ViewController alloc] init];
    NSString *str = [VC getValueLabel:0];
    
    // ==========================================
    // 値が一致していることを期待
    // 書き方はいっぱいある
    XCTAssertTrue([str isEqualToString:kValueZero]);
    // ==========================================
}
```
  
**実際は API 叩いて得られるはずの JSON 取得値のテストなどに用いると考えられる。**
