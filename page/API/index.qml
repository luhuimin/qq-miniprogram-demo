<set-tab-bar qq:if="{{isSetTabBarPage}}" bindunmount="leaveSetTabBarPage"></set-tab-bar>
<view qq:else class="index">
  <view class="index-hd">
    <image class="index-logo" src="../../image/index/logo-api.svg" mode="aspectFill"></image>
    <view class="index-desc">以下将演示小程序接口能力，具体属性参数详见<navigator url="../../page/component/pages/web-view/web-view" class="index-navigator">QQ小程序开发文档</navigator></view>
  </view>
  <view class="index-bd">

    <view class="list-wrap">
      <block qq:for-items="{{list}}" qq:key="{{item.id}}">
        <view class="list-wrap__group {{item.name !== '数据' && item.name !== '多线程' ? (item.open ? 'list-wrap__group_expand' : 'list-wrap__group_collapse') : ''}}">
          <view id="{{item.id}}" class="list-wrap__group-hd" bindtap="kindToggle">
            <text class="list-wrap__group-title">{{item.name}}</text>
            <image class="list-wrap__group-icon" src="../../image/index/{{item.id}}.svg"  mode="aspectFill" />
          </view>
          <view class="list-wrap__group-bd">
            <block qq:for-items="{{item.pages}}" qq:for-item="page" qq:key="*item">
              <navigator url="pages/{{page.url}}" class="list-wrap__item" qq:if="{{page.url !== '@set-tab-bar'}}">
                <view class="list-wrap__item-bd">
                  <text class="list-wrap__txt-title">{{page.zh}}</text>
                  <image class="list-wrap__group-icon-more" src="../../image/common/icon-arrow-right@2x.svg"  mode="aspectFill" />
                </view>
                <view class="list-wrap__item-ft"></view>
              </navigator>

              <view class="list-wrap__item" qq:else bindtap="enterSetTabBarPage">
                <view class="list-wrap__item-bd">
                  <text class="list-wrap__txt-title">{{page.zh}}</text>
                  <image class="list-wrap__group-icon-more" src="../../image/common/icon-arrow-right@2x.svg"  mode="aspectFill" />
                </view>
                <view class="list-wrap__item-ft"></view>
              </view>              
            </block>
          </view>
        </view>
      </block>
    </view>

  </view>
</view>
