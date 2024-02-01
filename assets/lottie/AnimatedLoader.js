import { View, Text, StyleSheet } from 'react-native'
import React from 'react'
import Lottie from 'lottie-react-native'

const AnimatedLoader = () => {
  return (
    <View>
      <Lottie
        style={styles.container}
        source={require('./loadingAnimation.json')}
        autoPlay
        loop
      />
    </View>
  )
}

const styles = StyleSheet.create({
  container: {
    height: '20%',
    height: '20%',
    justfyContent: 'center',
    alignItems: 'center',
  },
})

export default AnimatedLoader
