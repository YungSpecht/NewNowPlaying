%hook SPTNowPlayingTestManagerImplementation

- (bool)isNewNowPlayingViewEnabled {
    return NO;
} 
- (bool)isNewNowPlayingViewEnabledIPad {
    return YES;
} 
- (bool)isNewNowPlayingViewEnabledOnFree {
    return YES;
} 
-(bool)isNewNowPlayingViewEnabledOnPremium {
    return YES;
} 

- (bool)isNewNowPlayingViewConsolidatedFlagEnabled {
    return YES;
} 
- (bool)isShowsFormatEnabledForPlayerState:(id)arg1 {
    return YES;
} 
%end

%hook SPTNowPlayingContainerIdleMonitor
- (void)setCountdownEnabled:(bool)arg1 {
    arg1 = NO;
    %orig;
} 
%end

%hook SPTAdFeatureFlagChecks
- (bool)isNewNowPlayingViewEnabled {
    return YES;
} 
%end

%hook SPTCollectionPlatformTestManagerImplementation
- (bool)isNewNowPlayingViewEnabled {
    return YES;
} 
%end

%hook SPTNowPlayingCoverArtViewCell
- (bool)isShowsFormatAppearance {
    return YES;
} 
%end






