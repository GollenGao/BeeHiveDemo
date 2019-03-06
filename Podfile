


# 注意 如果不用use_frameworks!  BeeHive 会被打成.a 文件, 多target引入 #import<BeeHive.h> 会有错误
# 如果编译出错 Include of non-modular header inside framework module
# Build Setting 下 Allow Non-modular Includes In Framework Modules => Yes


use_frameworks!


target 'BeeHiveDemo' do
    
    pod 'BeeHive'
end

target 'AModule' do
    
    pod 'BeeHive'
end


target 'BModule' do
    
    pod 'BeeHive'
end


target 'CModule' do
    
    pod 'BeeHive'
end


target 'PublicModule' do
    
    pod 'BeeHive'
end

