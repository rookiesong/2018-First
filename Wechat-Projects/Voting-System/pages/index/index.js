Page({

  /**
   * 页面的初始数据
   */
  data: {
    votes: '',
    totalPageNum: 0,
    currentPage: 1,
    bottomLineState: false,
    votedColor: ['#9dc8c8', '#58c9b9', '#519d9e', '#d1b6e1'],
    filterName: 'all',
    delOpState: false,
    pullDownState: true,
    voteState: true
  },

  /**
   * 生命周期函数--监听页面加载
   */
  onLoad: function (options) {
    
  },

  /**
   * 生命周期函数--监听页面初次渲染完成
   */
  onReady: function () {
    
  },

  /**
   * 生命周期函数--监听页面显示
   */
  onShow: function () {
    
  },

  /**
   * 生命周期函数--监听页面隐藏
   */
  onHide: function () {
    
  },

  /**
   * 生命周期函数--监听页面卸载
   */
  onUnload: function () {
    
  },

  /**
   * 页面相关事件处理函数--监听用户下拉动作
   */
  onPullDownRefresh: function () {
    
  },

  /**
   * 页面上拉触底事件的处理函数
   */
  onReachBottom: function () {
    
  },

  /**
   * 用户点击右上角分享
   */
  onShareAppMessage: function () {
    
  },
  targetToAdd: function () {
    wx.navigateTo({
      url: '/pages/comment/comment',
      success: function (res) {
        console.log(res)
      }
    })
  }
})