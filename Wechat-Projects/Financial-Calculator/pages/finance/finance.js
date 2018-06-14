Page({
  data: {
    grids: [
      { key: 0, abbr: "0-AM", name: "分期偿还" },
      { key: 1, abbr: "1-CAGR", name: "复合年均增成长率" },
      { key: 2, abbr: "2-CI", name: "复利" },
      { key: 3, abbr: "3-DF", name: "贴现因子" },
      { key: 4, abbr: "4-FV", name: "终值" },
      { key: 5, abbr: "5-IRR", name: "内部回报率" },
      { key: 6, abbr: "6-XIRR", name: "---" },
      { key: 7, abbr: "7-LR", name: "杠杆比率" },
      { key: 8, abbr: "8-NPV", name: "净现值" },
      { key: 9, abbr: "9-PP", name: "投资回收期" },
      { key: 10, abbr: "10-PV", name: "现值" },
      { key: 11, abbr: "11-PI", name: "现值指数" },
      { key: 12, abbr: "12-ROI", name: "投资回报率" },
      { key: 13, abbr: "13-R72", name: "72法则" },
      { key: 14, abbr: "14-WACC", name: "加权平均资本成本" },
      { key: 15, abbr: "15-PMT", name: "等额本息分期付款" },
      { key: 16, abbr: "16-IAR", name: "实际回报率" },
      { key: 17, abbr: "17-RATE", name: "每期利率" }
    ]
  },
  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
    return {
      title: '金融公式',
      path: '/pages/finance/finance',
      success: function (res) {
        // 转发成功
      },
      fail: function (res) {
        // 转发失败
      }
    }
  }
});